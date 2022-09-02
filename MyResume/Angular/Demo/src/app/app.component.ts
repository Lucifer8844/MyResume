import { Component } from '@angular/core';
import studentData from './student.json';

import resumeData from './Resume.json';
interface Student{
    
  name: String;  
  attendance: String;  
   
}


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'Demo';

  studentlist:any[]=studentData;
  resumelist:any=resumeData;


  students:Student[]=studentData;

  //res:Resume[]=resumeData;
}
