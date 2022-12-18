<?php $this->view("includes/header"); ?>
<div class="container-fluid">
    <div class="p-4 mx-auto shadow rounded" style="width: 100%; max-width: 340px; margin-top: 50px;">
        <h2 class="text-center">RAVING BOOTH</h2>
        <p>hier könnte ein Logo sein</p>
        <h3>Sign up</h3>
        <input class="form-control" type="email" name="email" placeholder="Email">
        <br>
        <input class="form-control" type="text" name="username" placeholder="Username">
        <br>
        <select class="form-control">
            <option value="">Pick a gender</option>
            <option value="female">weiblich</option>
            <option value="male">männlich</option>
            <option value="diverse">divers</option>
            <option value="not_specified">Keine Angabe</option>
        </select>
        <br>
        <select class="form-control">
            <option value="">Select your course</option>
            <option value="computer_science">Informatik</option>
            <option value="business_informatics">Wirtschaftsinformatik</option>
            <option value="tourism_management">Tourismusmanagement</option>
            <option value="management">Management</option>
        </select>
        <br>
        <input class="form-control" type="date" name="birthday" placeholder="birthday">
        <br>
        <input class="form-control" type="file" name="photoUrl" placeholder="Profile picture">
        <br>
        <input class="form-control" type="password" name="password" placeholder="Password">
        <br>
        <input class="form-control" type="password" name="password_repeat" placeholder="Repeat password">
        <br>
        <button class="btn btn-primary">Sign Up</button>
    </div>
</div>
<?php $this->view("includes/footer"); ?>