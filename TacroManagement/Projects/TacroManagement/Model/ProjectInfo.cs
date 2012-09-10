﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class ProjectInfo
    {
        private string projectNum;
        private string projectName;
        private int projectAdminID;
        private string projectDescription;
        private string projectType;
        private string projectClientName;
        private string beginTime;
        private string endTime;

        

        public ProjectInfo()
        {

        }

        public ProjectInfo(string projectName, int projectAdminID, string projectDescription, string projectType, string projectClientName, string beginTime, string endTime)
        {
            this.projectName = projectName;
            this.projectAdminID = projectAdminID;
            this.projectDescription = projectDescription;
            this.projectType = projectType;
            this.projectClientName = projectClientName;
            this.beginTime = beginTime;
            this.endTime = endTime;
        }

        public ProjectInfo(string projectNum, string projectName, int projectAdminID, string projectDescription, string projectType, string projectClientName, string beginTime, string endTime)
        {
            this.projectNum = projectNum;
            this.projectName = projectName;
            this.projectAdminID = projectAdminID;
            this.projectDescription = projectDescription;
            this.projectType = projectType;
            this.projectClientName = projectClientName;
            this.beginTime = beginTime;
            this.endTime = endTime;
        }

        public string ProjectNum
        {
            get { return this.projectNum; }
            //set { this.projectNum = value; }
        }

        public string ProjectName
        {
            get { return this.projectName; }
            set { this.projectName = value; }
        }

        public int ProjectAdminID
        {
            get { return this.projectAdminID; }
            set { this.projectAdminID = value; }
        }

        public string ProjectDescription
        {
            get { return this.projectDescription; }
            set { this.projectDescription = value; }
        }

        public string ProjectType
        {
            get { return this.projectType; }
            set { this.projectType = value; }
        }

        public string ProjectClientName
        {
            get { return projectClientName; }
            set { projectClientName = value; }
        }

        public string BeginTime
        {
            get { return this.beginTime; }
            set { this.beginTime = value; }
        }

        public string EndTime
<<<<<<< HEAD
        {
=======
        {
>>>>>>> e9c41c9142fc706bc282ac57b52204e5e3e806cf
            get { return endTime; }
            set { endTime = value; }
        }

        //public string EndTime
        //{
        //    get { return this.endTime; }
        //    set { this.endTime = EndTime; }
        //}
<<<<<<< HEAD

=======
>>>>>>> e9c41c9142fc706bc282ac57b52204e5e3e806cf
    }
}
