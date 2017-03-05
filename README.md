# Daily Planner with Rails API

Please ref [The Daily Planner](https://github.com/ShawnTe/Daily-Planner) for info on this learning sandbox project.  

### Evolution
The first version MVP of this project (link above) is a simple app begun at Dev Bootcamp and involves: HTML, CSS, JS/JQuery/Ajax.   

The learning objectives for this version include:  
1. Rails API  
2. Token-based authentication  
3. RSpec testing    


### Process
1. Enter Todos (Braindump!) (Pool of Possibilities)  
2. Clean up Todos (doing anything here??)  
3. Plan day  
  - Set Brainjuice session lengths  
  - Assign Todos to Container by Brainjuice  
    - receive error if too many  
    - unassign as needed  
4. Get to work!  
  - View only Todos in current Brainjuice session  
  - Edit Todos if nec  
  - Mark Todos complete  
5. End of session wrap up  
  - Decide if undone todos carry over or return to Pool of Possibilities  


#### MVP
Seeing as this is an API backend, the 'User' is tested via Postman
- x User can create new Todo  
- x User can edit Todo  
- x User can mark Todo complete  
- x User can delete Todo  
- x User can assign Todo for container  
- x User can un-assign Todo for container
- x User can view Todos by Bj  
- x User can view Todos designated for container (and by Bj session by default)  
- x User can set duration of time_container for Container  

Hmm. I originally had these here but now believe them to be client side. Moving them to React MVP.  
- User can only add Todos to Container with matching Bj
- User receives error when total time_est for Todos exceed time_container of Container  
- User, at end of Bj work session, can choose whether to carry-over or reset undone todos  


#### V.next
- Token-based authentication
- User can log in  
- User can log out  
- User can duplicate Todo  
- User can view Todos completed container  
