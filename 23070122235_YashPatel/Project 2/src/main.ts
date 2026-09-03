import { bootstrapApplication } from '@angular/platform-browser';
import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  standalone: true,
  template: `
    <div style="text-align:center; margin-top:50px; font-family:Arial, sans-serif;">
      <h1>Angular Application in Docker</h1>
      <p><strong>Name:</strong> Yash Patel</p>
      <p><strong>PRN:</strong> 23070122235</p>
      <p><strong>Course:</strong> DevOps Lab</p>
      <p style="color:green;">Application is running successfully in Docker!</p>
    </div>
  `
})
export class AppComponent {}

bootstrapApplication(AppComponent).catch(err => console.error(err));
