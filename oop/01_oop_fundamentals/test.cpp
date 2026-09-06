#include <iostream>
using namespace std;

class Complex
{
private:
  float real;
  float imag;

public:
  void setReal(float r)
  {
    real = r;
  }

  void setImag(float i)
  {
    imag = i;
  }

  void print()
  {
    cout << real << " + " << imag << "i" << endl;
  }
};

int main()
{
  Complex s1;

  s1.setReal(1);
  s1.setImag(2);

  s1.print();

  return 0;
}