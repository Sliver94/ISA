#include<stdio.h>
#include<stdlib.h>

#define N 1 /// order of the filter
#define NB 8  /// number of bits

const int b0 = 53; /// coefficient b0
const int b[N]={53}; /// b array
const int a[N]={-21}; /// a array

/// Perform fixed point filtering assuming direct form II
///\param x is the new input sample
///\return the new output sample

int myfilter(int x)
{
  static int sw[N]; /// w shift register
  static int first_run = 0; /// for cleaning the shift register
  int i; /// index
  int w; /// intermediate value (w)
  int y_no_ff; /// output with no feed-forward
  int y; /// output sample
  int fb, ff; /// feed-back and feed-forward results
  int fb_temp, ff_temp; /// temporary variable for feed-back, feed-forward before shifting
  int y_no_ff_temp; /// temporary variable for the output before shifting and adding the feed-forward

  /// clean the buffer
  if (first_run == 0)
  {
    first_run = 1;
    for (i=0; i<N; i++)
      sw[i] = 0;
  }

  /// compute feed-back and feed-forward
  fb = 0;
  ff = 0;
  fb_temp = 0;
  ff_temp = 0;
  for (i=0; i<N; i++)
  {
    /// Since a(i) and b(i) are fixed, we can assume that there will never be overflow for fb and ff
    fb_temp += sw[i]*(a[i]); /// [8 bit * 8 bit] = [16 bit]
    fb = fb_temp >> (NB); /// [16 bit] -> [8 bit]
    ff_temp += sw[i]*b[i]; /// [8 bit * 8 bit] = [16 bit]
    ff += ff_temp >> (NB); /// [16 bit] -> [8 bit]
  }

  /// compute intermediate value (w) and output sample
  /// We want w represented on 8 bits so...
  /// In the if argument are defined the only conditions under which we get overflow in the w variable:
  /// in these cases we used saturation arithmetic

  if(x > 116 && fb < 0) /// In these conditions w > 127, so we fixed w = 127
  {
      w = 127;
  }
  else if(x < -118 && fb >= 0) /// In these conditions w < -128, so we fixed w = -128
  {
      w = -128;
  }
  else
  {
      w = (x - fb);
  }

  y_no_ff_temp = (w*b0); /// [8 bit] * [8 bit] = [16 bit]
  y_no_ff = y_no_ff_temp >> (NB);     /// [16 bit] -> [8 bit]
  y = (y_no_ff + ff);

  /// update the shift register
  for (i=N-1; i>0; i--)
    sw[i] = sw[i-1];
  sw[0] = w;

  return y;
}

int main (int argc, char **argv)
{
  FILE *fp_in;
  FILE *fp_out;

  int x;
  int y;

  /// check the command line
  if (argc != 1)
  {
    printf("Use: %s <input_file> <output_file>\n", argv[0]);
    exit(1);
  }

  /// open files
  ///fp_in = fopen(argv[1], "r");
  fp_in = fopen("samples.txt", "r");
  if (fp_in == NULL)
  {
///    printf("Error: cannot open %s\n");
    exit(2);
  }
  fp_out = fopen("resultsc_v2.txt", "w");

  /// get samples and apply filter
  fscanf(fp_in, "%d", &x);
  do{
    y = myfilter(x);
    fprintf(fp_out,"%d\n", y);
    fscanf(fp_in, "%d", &x);
  } while (!feof(fp_in));

  fclose(fp_in);
  fclose(fp_out);

  return 0;

}