

 
 
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
    width: 50%;
}

input{
    height: 40px;
}

.InputContainer{
    display: flex;
    justify-content: center;
}
</style>
 <!--==================== MainFrm ====================-->
 <section class="Upperform">
                <div style="display: flex; justify-content: center; text-align: center;">
                            <h1>Enter Your Car Information</h1>
                        </div>
                        <div class="CenterDivs">

                        <div class="MainContainer">
                          
                        <div  class="LeftSide">
                        <div style="background-color: hsl(0deg 0% 100%); width:60%; margin: 20px; border-radius: 10px;">

                            <div class="Sell1FormDiv">

                        <form action="" method="POST" class="Sell1Form">


                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>model id</span>
                                        <input type="text" id="model_id" name="model_id" required>
                                    </div>
                                </div>
                            </div>
                            </div>
                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>mv_number</span>
                                        <input type="text" id="mv_number" name="mv_number" required>
                                    </div>
                                </div>
                            </div>

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>plate number</span>
                                        <input type="text" id="plate_number" name="plate_number" required>
                                    </div>
                                </div>
                            </div>

                            </div>
                            <div class="InputContainer">

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>variant</span>
                                        <input type="text" id="variant" name="variant" required>
                                    </div>
                                </div>
                            </div>

                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>mileage</span>
                                        <input type="text" id="mileage" name="mileage" required>
                                    </div>
                                </div>
                            </div>

                            </div>

                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>engine_number</span>
                                        <input type="text" name="engine_number" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>chasis_number</span>
                                        <input type="text" name="chasis_number" required>
                                    </div>
                                </div>
                            </div>
                            </div>

                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>start_bid</span>
                                        <input type="text" name="start_bid" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Year</span>
                                        <input type="text" name="Year" required>
                                    </div>
                                </div>
                            </div>
                            </div>

                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Description</span>
                                        <input style="height: 140px;"  type="text" id="Description" name="Description" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Technologies</span>

                                        <input style="height: 140px;" type="text" id="Technologies" name="Technologies" required>
                                    </div>
                                </div>
                            </div>
                            </div>

                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Cylinder</span>

                                        <input type="text" id="Cylinder" name="Cylinder" required>
                                    </div>
                                </div>
                            </div>
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>Pic</span>

                                        <input type="text" id="Pic" name="Pic" required>
                                    </div>
                                </div>
                            </div>
                            </div>

                            <div class="InputContainer">
                            <div class="formsection">
                                <div class="formcontainer">
                                    <div class="entryarea">
                                    <span>bid_end_datetime</span>

                                    <input type="text" id="bid_end_datetime" name="bid_end_datetime" class="datetimepicker" required>
                                    </div>
                                </div>
                            </div>
                            </div>

                                                                                                                      
        

                            <input onclick="myFunction()" type="Submit" name="Submit" value="Submit" id="Submit">

                          </form>

                          <?php
// Check if the form has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the form data
    $model_id = $_POST['model_id'];
    $mv_number = $_POST['mv_number'];
    $plate_number = $_POST['plate_number'];
    $variant = $_POST['variant'];
    $mileage = $_POST['mileage'];
    $engine_number = $_POST['engine_number'];
    $chasis_number = $_POST['chasis_number'];
    $start_bid = $_POST['start_bid'];
    $Year = $_POST['Year'];
    $Description = $_POST['Description'];
    $Technologies = $_POST['Technologies'];
    $Cylinder = $_POST['Cylinder'];
    $Pic = $_POST['Pic'];
    $bid_end_datetime = $_POST['bid_end_datetime'];

    // Insert the data into the database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "adms_db";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "INSERT INTO biddingcars (model_id, mv_number, plate_number, variant, mileage, engine_number, chasis_number, start_bid, Year, Description, Technologies, Cylinder, Pic, bid_end_datetime) VALUES ('$model_id', '$mv_number', '$plate_number', '$variant', '$mileage', '$engine_number', '$chasis_number', '$start_bid', '$Year', '$Description', '$Technologies', '$Cylinder', '$Pic', '$bid_end_datetime')";

    if (mysqli_query($conn, $sql)) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }

    mysqli_close($conn);
}
?>





</section>

