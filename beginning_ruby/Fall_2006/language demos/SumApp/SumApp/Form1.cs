using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Collections;

namespace SumApp
{
    public partial class Form1 : Form
    {
        ArrayList people;
        public Form1()
        {
            InitializeComponent();
            people = new ArrayList();
        }

        private void CalculateSum_Click(object sender, EventArgs e)
        {
            int sum = int.Parse(Num1.Text) + int.Parse(Num2.Text);
            answer.Text = sum.ToString();
        }

        private void ObjectAnswer_Click(object sender, EventArgs e)
        {
            Math m = new Math();
            ObjectAnswer.Text = m.sum(Num1.Text,Num2.Text);
        }

        private void addPerson_Click(object sender, EventArgs e)
        {
            people.Add(new Person(name.Text));
            nameList.Text = "";
            string output = "";
            foreach(Person p in people)
            {
                output += (p + "\n");
            }
            nameList.Text = output;
        }
    }

    public class Math
    {
        public string sum(string num1, string num2)
        {
            return (int.Parse(num1) + int.Parse(num2)).ToString();
        }
    }

    public class Person
    {
        private string name;
        public Person(string name)
        {
            this.name = name;
        }
        public override string ToString()
        {
            return "Hello my name is " + this.name;
        }
    }
}