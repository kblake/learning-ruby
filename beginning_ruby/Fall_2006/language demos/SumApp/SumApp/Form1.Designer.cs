namespace SumApp
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.Num1 = new System.Windows.Forms.TextBox();
            this.Num2 = new System.Windows.Forms.TextBox();
            this.CalculateSum = new System.Windows.Forms.Button();
            this.answer = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.ObjectAnswerButton = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.ObjectAnswer = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.name = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.nameList = new System.Windows.Forms.Label();
            this.addPerson = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Num1
            // 
            this.Num1.Location = new System.Drawing.Point(133, 27);
            this.Num1.Name = "Num1";
            this.Num1.Size = new System.Drawing.Size(100, 20);
            this.Num1.TabIndex = 0;
            // 
            // Num2
            // 
            this.Num2.Location = new System.Drawing.Point(133, 71);
            this.Num2.Name = "Num2";
            this.Num2.Size = new System.Drawing.Size(100, 20);
            this.Num2.TabIndex = 1;
            // 
            // CalculateSum
            // 
            this.CalculateSum.Location = new System.Drawing.Point(133, 126);
            this.CalculateSum.Name = "CalculateSum";
            this.CalculateSum.Size = new System.Drawing.Size(75, 23);
            this.CalculateSum.TabIndex = 2;
            this.CalculateSum.Text = "Get Sum";
            this.CalculateSum.UseVisualStyleBackColor = true;
            this.CalculateSum.Click += new System.EventHandler(this.CalculateSum_Click);
            // 
            // answer
            // 
            this.answer.AutoSize = true;
            this.answer.Location = new System.Drawing.Point(297, 136);
            this.answer.Name = "answer";
            this.answer.Size = new System.Drawing.Size(0, 13);
            this.answer.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 131);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Raw Calculate";
            // 
            // ObjectAnswerButton
            // 
            this.ObjectAnswerButton.Location = new System.Drawing.Point(133, 172);
            this.ObjectAnswerButton.Name = "ObjectAnswerButton";
            this.ObjectAnswerButton.Size = new System.Drawing.Size(125, 23);
            this.ObjectAnswerButton.TabIndex = 5;
            this.ObjectAnswerButton.Text = "Sum from object";
            this.ObjectAnswerButton.UseVisualStyleBackColor = true;
            this.ObjectAnswerButton.Click += new System.EventHandler(this.ObjectAnswer_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 177);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 13);
            this.label2.TabIndex = 6;
            this.label2.Text = "Sum from Object";
            // 
            // ObjectAnswer
            // 
            this.ObjectAnswer.AutoSize = true;
            this.ObjectAnswer.Location = new System.Drawing.Point(293, 179);
            this.ObjectAnswer.Name = "ObjectAnswer";
            this.ObjectAnswer.Size = new System.Drawing.Size(0, 13);
            this.ObjectAnswer.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(62, 30);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Num 1";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(62, 74);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 9;
            this.label4.Text = "Num 2";
            // 
            // name
            // 
            this.name.Location = new System.Drawing.Point(404, 30);
            this.name.Name = "name";
            this.name.Size = new System.Drawing.Size(182, 20);
            this.name.TabIndex = 10;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(401, 7);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(35, 13);
            this.label5.TabIndex = 11;
            this.label5.Text = "Name";
            // 
            // nameList
            // 
            this.nameList.AutoSize = true;
            this.nameList.Location = new System.Drawing.Point(411, 88);
            this.nameList.Name = "nameList";
            this.nameList.Size = new System.Drawing.Size(0, 13);
            this.nameList.TabIndex = 12;
            // 
            // addPerson
            // 
            this.addPerson.Location = new System.Drawing.Point(404, 56);
            this.addPerson.Name = "addPerson";
            this.addPerson.Size = new System.Drawing.Size(182, 23);
            this.addPerson.TabIndex = 13;
            this.addPerson.Text = "Add person to list";
            this.addPerson.UseVisualStyleBackColor = true;
            this.addPerson.Click += new System.EventHandler(this.addPerson_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(618, 321);
            this.Controls.Add(this.addPerson);
            this.Controls.Add(this.nameList);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.name);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.ObjectAnswer);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.ObjectAnswerButton);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.answer);
            this.Controls.Add(this.CalculateSum);
            this.Controls.Add(this.Num2);
            this.Controls.Add(this.Num1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox Num1;
        private System.Windows.Forms.TextBox Num2;
        private System.Windows.Forms.Button CalculateSum;
        private System.Windows.Forms.Label answer;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button ObjectAnswerButton;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label ObjectAnswer;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox name;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label nameList;
        private System.Windows.Forms.Button addPerson;
    }
}

