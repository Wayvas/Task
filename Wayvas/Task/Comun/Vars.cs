using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    public class Vars
    {
       
        //Program task:)
        public string TaskName { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime DueDate { get; set; }
        public string CompDate { get; set; }
        public string TaskComs {get; set;}
        
        
       public Vars(string TaskName,DateTime StartDate,DateTime  DueDate,string CompDate,string TaskComs)
        {
            this.TaskName=TaskName;
            this.StartDate = StartDate;
            this.DueDate = DueDate;
            this.CompDate = CompDate;
            this.TaskComs = TaskComs;
        }
     
       public Vars(string TaskName, DateTime DueDate,  string TaskComs)
       {
           this.TaskName = TaskName;
           this.DueDate = DueDate;
           this.TaskComs = TaskComs;


       }
       public Vars(string TaskName,DateTime StartDate, DateTime DueDate, string TaskComs)
       {
           this.TaskName = TaskName;
           this.StartDate = StartDate;
           this.DueDate = DueDate;
           this.TaskComs = TaskComs;


       }
        
        public Vars()
        {
        }

     
    }

}
