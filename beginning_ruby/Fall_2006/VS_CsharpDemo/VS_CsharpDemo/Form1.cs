using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace VS_CsharpDemo
{
    public partial class Form1 : Form
    {
        ArrayList people;
        public Form1()
        {
            InitializeComponent();
            people = new ArrayList();

        }

        private void sumButton_Click(object sender, EventArgs e)
        {
            int sum = int.Parse(num1.Text) + int.Parse(num2.Text);
            sumAnswer.Text = sum.ToString();
        }

        private void objectSumButton_Click(object sender, EventArgs e)
        {
            Math m = new Math(); //Math m = Math.new
            objectSumAnswer.Text = m.sum(num1.Text,num2.Text).ToString();
        }

        private void nameButton_Click(object sender, EventArgs e)
        {
            people.Add(new Person(name.Text));
            string output = "";
            foreach (Person p in people)
            {
                output += p + "\n";
            }
            nameList.Text = output;
        }
    }

    public class Math
    {
        public int sum(string num1, string num2)
        {
            return int.Parse(num1) + int.Parse(num2);
        }
    }

    public class Person
    {
        private string name;

        //constructor
        public Person(string name)
        {
            this.name = name;
        }

        public override string ToString()
        {
            return "Hello my name is " + this.name;
        }

        public void setName(string name)
        {
            this.name = name;
        }

        public string getName()
        {
            return this.name;
        }
    }
}








