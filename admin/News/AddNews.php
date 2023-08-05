
<style>
    .entryarea{
    display: flex;
    flex-direction: column;
}

.LeftSide{
    width: 100%;
    display: flex;
    justify-content: center;
}

.Sell1FormDiv{
    margin: 40px;
}

.formsection{
    margin: 20px;
}
</style>

<!--==================== MainFrm ====================-->
 <section class="Upperform">
                <div style="display: flex; justify-content: center; text-align: center;">
                        </div>
                        <div class="CenterDivs">

                        <div class="MainContainer">
                          
                        <div  class="LeftSide">
                        <div style="background-color: hsl(0deg 0% 100%); width:60%; margin: 20px; border-radius: 10px;">
                        <div class="vl"></div>
                            <div class="Sell1FormDiv">
                        <form action="" method="POST" class="newsform">

                            <div class="InputContainer">

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Title</span>
                                        <input style="height: 40px;" type="text" id="Title" name="Title" required>
                                    </div>
                                </div>
                            </div>

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Descriptionn1</span>
                                        <input style="height: 140px;" type="text" id="Descriptionn" name="Descriptionn" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Descriptionn2</span>
                                        <input style="height: 140px;" type="text" id="Descriptionn1" name="Description1" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Descriptionn3</span>
                                        <input style="height: 140px;" type="text" id="Descriptionn2" name="Description2" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Descriptionn4</span>
                                        <input style="height: 140px;" type="text" id="Descriptionn3" name="Description3" required>
                                    </div>
                                </div>
                            </div>

                            </div>
                            <div class="InputContainer">

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>NewsLink</span>
                                        <input style="height: 40px;" type="text" id="NewsLink" name="NewsLink" required>
                                    </div>
                                </div>
                            </div>

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Pic</span>
                                        <input style="height: 40px;" type="text" id="Pic" name="Pic" required>
                                    </div>
                                </div>
                            </div>

                            </div>



                                                                                                                      
        

                            <input onclick="myFunction()" type="Submit" name="Submit" value="Submit" id="Submit">

                          </form>

                          <?php

                          if(isset($_POST['Title']) && isset($_POST['Descriptionn']) && isset($_POST['Description1']) && isset($_POST['Description2']) && isset($_POST['Description3']) && isset($_POST['NewsLink']) && isset($_POST['Pic']) ){
                            $Pic = $_POST['Pic'];
                            $Title = $_POST['Title'];
                            $Descriptionn = $_POST['Descriptionn'];
                            $NewsLink = $_POST['NewsLink'];




                            $servername = "localhost";
                            $username = "root";
                            $password = "";
                            $dbname = "adms_db";

                            $conn = mysqli_connect($servername,$username,$password,$dbname);

                            if ($conn->connect_error) {
                                die('Could not connect to the database.');
                            }
                            else {
                                $stmt = $conn->prepare("insert into news(Pic, Title, Descriptionn, Description1, Description2, Description3, NewsLink)
                                values(?, ?, ?, ? , ? , ? , ?)");
                                $stmt->bind_param("sssssss",$Pic, $Title, $Descriptionn, 
                                $Description1, $Description2, $Description3, $NewsLink);
                                $data_inserted_successfully = true;
                             
                                    if ($data_inserted_successfully) { ?>
                                        <script>
                                    function myFunction(){
                                    swal({
                                        title: "Success",
                                        text: "Data inserted",
                                        icon: "success",
                                    })
                                    };
                                    myFunction();
                                </script>
                                <?php } 
                                $stmt->execute();
                                $stmt->close();
                                $conn->close();
                                ?>

                                <?php
                            }}
                                ?>




</section>