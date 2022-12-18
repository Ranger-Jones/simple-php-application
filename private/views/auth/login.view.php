<?php $this->view("includes/header"); ?>
<div class="container-fluid">
    <div class="p-4 mx-auto shadow rounded" style="width: 100%; max-width: 340px; margin-top: 50px;">
        <h2 class="text-center">RAVING BOOTH</h2>
        <p>hier könnte ein Logo sein</p>
        <h3>Login</h3>
        <input class="form-control" type="email" name="email" placeholder="Email">
        <br>
        <input class="form-control" type="password" name="password" placeholder="Password">
        <br>
        <button class="btn btn-primary">Login</button>
    </div>
</div>
<?php $this->view("includes/footer"); ?>