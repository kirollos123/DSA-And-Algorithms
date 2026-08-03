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

  float getReal()
  {
    return real;
  }

  float getImag()
  {
    return imag;
  }

  void print()
  {
    cout << real << " + " << imag << "i" << endl;
  }
};

Complex add(Complex c1, Complex c2)
{
  Complex result;

  result.setReal(c1.getReal() + c2.getReal());
  result.setImag(c1.getImag() + c2.getImag());

  return result;
}

Complex subtract(Complex c1, Complex c2)
{
  Complex result;

  result.setReal(c1.getReal() - c2.getReal());
  result.setImag(c1.getImag() - c2.getImag());

  return result;
}

int main()
{
  Complex myComp1, myComp2, resultComp;

  myComp1.setReal(3);
  myComp1.setImag(2);

  myComp2.setReal(5);
  myComp2.setImag(4);

  cout << "Complex 1: ";
  myComp1.print();

  cout << "Complex 2: ";
  myComp2.print();

  resultComp = add(myComp1, myComp2);
  cout << "Addition: ";
  resultComp.print();

  resultComp = subtract(myComp1, myComp2);
  cout << "Subtraction: ";
  resultComp.print();

  return 0;
}