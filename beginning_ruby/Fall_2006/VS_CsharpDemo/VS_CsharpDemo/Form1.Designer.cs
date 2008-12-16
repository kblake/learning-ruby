namespace VS_CsharpDemo
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.num1 = new System.Windows.Forms.TextBox();
            this.num2 = new System.Windows.Forms.TextBox();
            this.sumButton = new System.Windows.Forms.Button();
            this.objectSumButton = new System.Windows.Forms.Button();
            this.sumAnswer = new System.Windows.Forms.Label();
            this.objectSumAnswer = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.nameList = new System.Windows.Forms.Label();
            this.nameButton = new System.Windows.Forms.Button();
            this.name = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(48, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Number 1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(48, 105);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(53, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Number 2";
            // 
            // num1
            // 
            this.num1.Location = new System.Drawing.Point(115, 28);
            this.num1.Name = "num1";
            this.num1.Size = new System.Drawing.Size(100, 20);
            this.num1.TabIndex = 2;
            // 
            // num2
            // 
            this.num2.Location = new System.Drawing.Point(115, 98);
            this.num2.Name = "num2";
            this.num2.Size = new System.Drawing.Size(100, 20);
            this.num2.TabIndex = 3;
            // 
            // sumButton
            // 
            this.sumButton.Location = new System.Drawing.Point(115, 149);
            this.sumButton.Name = "sumButton";
            this.sumButton.Size = new System.Drawing.Size(75, 23);
            this.sumButton.TabIndex = 4;
            this.sumButton.Text = "Get Sum!";
            this.sumButton.UseVisualStyleBackColor = true;
            this.sumButton.Click += new System.EventHandler(this.sumButton_Click);
            // 
            // objectSumButton
            // 
            this.objectSumButton.Location = new System.Drawing.Point(115, 213);
            this.objectSumButton.Name = "objectSumButton";
            this.objectSumButton.Size = new System.Drawing.Size(75, 23);
            this.objectSumButton.TabIndex = 5;
            this.objectSumButton.Text = "Object Sum!";
            this.objectSumButton.UseVisualStyleBackColor = true;
            this.objectSumButton.Click += new System.EventHandler(this.objectSumButton_Click);
            // 
            // sumAnswer
            // 
            this.sumAnswer.AutoSize = true;
            this.sumAnswer.Location = new System.Drawing.Point(276, 158);
            this.sumAnswer.Name = "sumAnswer";
            this.sumAnswer.Size = new System.Drawing.Size(0, 13);
            this.sumAnswer.TabIndex = 6;
            // 
            // objectSumAnswer
            // 
            this.objectSumAnswer.AutoSize = true;
            this.objectSumAnswer.Location = new System.Drawing.Point(279, 222);
            this.objectSumAnswer.Name = "objectSumAnswer";
            this.objectSumAnswer.Size = new System.Drawing.Size(0, 13);
            this.objectSumAnswer.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(379, 28);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(66, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Enter Name:";
            // 
            // nameList
            // 
            this.nameList.AutoSize = true;
            this.nameList.Location = new System.Drawing.Point(379, 115);
            this.nameList.Name = "nameList";
            this.nameList.Size = new System.Drawing.Size(0, 13);
            this.nameList.TabIndex = 9;
            // 
            // nameButton
            // 
            this.nameButton.Location = new System.Drawing.Point(382, 70);
            this.nameButton.Name = "nameButton";
            this.nameButton.Size = new System.Drawing.Size(185, 23);
            this.nameButton.TabIndex = 10;
            this.nameButton.Text = "Click here to add name to list";
            this.nameButton.UseVisualStyleBackColor = true;
            this.nameButton.Click += new System.EventHandler(this.nameButton_Click);
            // 
            // name
            // 
            this.name.Location = new System.Drawing.Point(382, 44);
            this.name.Name = "name";
            this.name.Size = new System.Drawing.Size(100, 20);
            this.name.TabIndex = 11;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(654, 284);
            this.Controls.Add(this.name);
            this.Controls.Add(this.nameButton);
            this.Controls.Add(this.nameList);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.objectSumAnswer);
            this.Controls.Add(this.sumAnswer);
            this.Controls.Add(this.objectSumButton);
            this.Controls.Add(this.sumButton);
            this.Controls.Add(this.num2);
            this.Controls.Add(this.num1);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox num1;
        private System.Windows.Forms.TextBox num2;
        private System.Windows.Forms.Button sumButton;
        private System.Windows.Forms.Button objectSumButton;
        private System.Windows.Forms.Label sumAnswer;
        private System.Windows.Forms.Label objectSumAnswer;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label nameList;
        private System.Windows.Forms.Button nameButton;
        private System.Windows.Forms.TextBox name;
    }
}

