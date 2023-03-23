<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    
     <div class="start_btn"><button>Start!</button></div>
     <img src="student.gif" alt="kuch bhi...">
     <div class="info_box">
        <div class="info_title">
          <span>
            Rules to follow
           </span>
        </div>

        <div class="info_list">
            <ul>
            <li><div class="info">You will get <span>15 seconds </span>to answer each question</div></li>
            <li><div class="info">You can't exit once you click the start button. </div></li>
            <li><div class="info">You'll get marks on the basis of correct answers.</div></li>
            <li><div class="info">You can't move to another page after starting the quiz else you'll be disqualified.</div></li></ul>

        </div>   
        <div class="bol">
            Good Luck!
        </div>
        <div class="buttons">
            <button class="quit">Exit Quiz</button>
            <button class="restart">Continue</button>

       </div>
    </div>

    <div class="quiz_box">
        <header>
            <div class="title">Quiz</div>
            <div class="timer">
                <div class="time_text">Time Left</div>
                <div class="timer_sec">15</div>

            </div>
            <div class="time_line">

            </div>
        </header>
        <section>
            <div class="que_text">
                <!-- <span>Abc?</span> -->
            </div>
            <div class="option_list">
                <!-- <div class="option">
                    <span>hi</span>
                    <div class="icon tick"><i class="fas fa-check"></i></div>
                </div>
                <div class="option">
                    <span>how</span>
                     <div class="icon cross"><i class="fas fa-times"></i></div>
                </div>
                <div class="option">
                    <span>are</span>
                    
                </div>
                 <div class="option">
                    <span>Data Structures and Algorithm</span>
                </div> -->
            </div>


        </section>
         <footer>
            <div class="total_que">
                 <!-- <span><p>2</p>Of<p>5</p>Questions</span> -->
            </div>
            <button class="next_btn">Next</button>
         </footer>
    </div>    
        
    <div class="result_box">
        <div class="icon">
            <i class='fas fa-crown'></i>
        </div>
        <div class="complete_text">You've completed the quiz.</div>
        <div class="score_text">
            <!-- <span>You scored <p>x</p> out of <p>y</p></span> -->
        </div>
    <div class="buttons">
        <button class="restart">Restart</button>
        <button class="quit">Quit</button>
    </div>
</div>
    <script src="script.js"></script>
    <script src="questions.js"></script>
    
</body>
</html>