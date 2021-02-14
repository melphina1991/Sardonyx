<%@ Page Language="C#" AutoEventWireup="true" CodeFile="POS.aspx.cs" Inherits="POS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script> 
    
    <title></title>
</head>
<body>
  
  <form id="form1" runat="server">
    <nav class="navbar navbar-dark bg-dark">
        
    <span class="navbar-brand nd-0 h1"><b>Tea Leaves Point of Sales</b><br />
      
        <asp:Label ID="Label3" runat="server" Text="Welcome Back!"></asp:Label> <asp:Label ID="Label2" runat="server" Text="" ForeColor="White" ></asp:Label>

         <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" />
       
    </span>
       
       
       
    </nav>
       
        <div class="row">
            <div class="col-sm-3">
                <div class="container">
                    <div class="list-group-item list-group-item-success" >
                       <b> Products</b>
                         
                    </div>
                     
                    
                    <div class="panel-body bg-dark "  style="color:white">
                         
                            
                              <div class="form-group">
                                  <div>
                                      <img src="tea/basil.jpg" id="bas" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Basil</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/cerasee.jpg" id="cer" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Cerasee</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/lemongrass.jpg"id="lem" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Lemon Grass</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/lify.jpg"id="lif" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Leaf of Life</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/lime.jpg"id="lim" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Lime</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/mint.jpg"id="min" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Mint</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/rose.jpg"id="ros" class="photo" width="100"height="100" data-toggle="modal" data-target="#exampleModal" />
                                      <b>Rosemary</b>
                                     
                                  </div>
                                   <div>
                                      <img src="tea/sour.jpg"id="sou" class="photo" width="100"height="100"  data-toggle="modal" data-target="#exampleModal" />
                                      <b>Soursop</b>
                                     
                                  </div>
                              </div>
                              
                                
                              
                           </form>


                    </div>

                </div>

            </div>
       
    <div class="col-sm-6" >
         <div class="container">
            <div class="list-group-item list-group-item-success">
                  <b>Add Product</b>
               
            </div>
                 <table id="item" class="table table-dark table-hover table-bordered " cellpadding="0" cellspacing="0" align="center"  style="color:white">
                     <thead>
                         <tr>
                             <th>Delete</th>
                             <th>Item</th>
                             <th>Price</th>
                             <th>Ouantity</th>
                             <th>Total</th>
                         </tr>
                         <tbody>

                         </tbody>
                     </thead>
                 </table>

                    

         </div>
   </div>
     <div class="col-sm-3">
          <div class="container">
            <div class="list-group-item list-group-item-success ">
                  <b>Transaction</b>
               
            </div>
              <div>
                  <label> Total </label>
                  <input type="text" style="color:yellowgreen; background:black; font-size:30px;" id="total" name="total" placeholder="Total" />

              
              </div>
               <div>
                  
                  <button type="button" class="btn btn-warning"  id="reset" onclick="reset()">Reset</button>

              </div>
              <div>
                  <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black"></asp:Label>
              </div>
              <div>
                 
                  
                      
              </div>
              </div>
         </div>
    </div>



<!-- Modal -->
<div  class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Enter the Quantity</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <label>Quantity</label>
          <input type="number" id="qty" name="Quantity" placeholder="Quantity" value="1" />
 


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" onclick="add()">Add</button>
       
      </div>
    </div>
  </div>
</div>
    


@section scripts {
<script src="Scripts/jquery-3.5.1.js"></script>
<script src="Scripts/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
    var total = 0;
    var tot = 0;
    var item = null;
    var price = 0;

    var a = " "
    $("img").on("click", function () {
        a = $(this).prop('id')
    });

    function add()
    {
        if (a == "bas") {
            item = "Basil";
            price = 200;
        }
        else if (a == "cer") {

            item = "Cerasee";
            price = 350;
        }
        else if (a == "lem") {
            item = "Lemon Grass";
            price = 150;
        }

        else if (a == "lif") {
            item = "Leaf of Life";
            price = 350;
        }

        else if (a == "lim") {
            item = "Lime";
            price = 400;
        }
        else if (a == "min") {

            item = "Mint";
            price = 150;
        }
        else if (a == "ros") {
            item = "Rosemary";
            price = 450;
        }
        else if (a == "sou") {
            item = "Soursop";
            price = 450;
        }

        var qty = $("#qty").val();
        tot = qty * price;

        var table =
            "<tr>" +
            "<td><button type='button' name ='record' class='btn btn-warning' onclick='deleterow(this)'>Delete</td>" +
            "<td>" + item + "</td>" +
            "<td>" + price + "</td>" +
            "<td>" + qty + "</td>" +
            "<td>" + tot + "</td>" +
            "</tr>"
        total += Number(tot);
        $("#total").val(total);
        $("#item tbody").append(table);
        $("#exampleModal").modal("hide");


    }

    function deleterow(e) {
        total_cost = parseInt($(e).parent().parent().find('td:last').text(),10);
        total -= total_cost;
        $('#total').val(total);
        $(e).parent().parent().remove();
    }

    function reset() {
        location.reload();
    }

  
</script>
    

}
</body>
</html>