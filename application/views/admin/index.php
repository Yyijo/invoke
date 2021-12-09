<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg">
            <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>'); ?>

           

            <!--<a href="" class="btn btn-primary mb-3" data-toggle="modal" data-target="#newRoleModal">Add New Role</a>-->

            <table class="table table-hover">
                <thead>
                    <tr>
                        
                        <th scope="col">Queue ID</th>
                        <th scope="col">Cust.ID</th>
                        <!-- <th scope="col">Cust. Name</th>   Amek dari table customer -->
                        <th scope="col">Join Queue Time</th>
                        <th scope="col">Queue Waiting Time</th>
                        <th scope="col">Res.Business ID</th>
                        <th scope="col">Total People in Queue</th>
                        <th scope="col">Action</th>
                  
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($queue_id as $q) : ?>
                    <tr>
                        <th scope="row"><?= $i; ?></th>
                        <td><?= $q['queue_id']; ?></td>
                        <td><?= $q['cust_id']; ?></td>
                        <td><?= $q['queue_joinqueuetime']; ?></td>
                        <td><?= $q['queue_waitingtime']; ?></td>
                        <td><?= $q['res_business_id']; ?></td>
                        <td><?= $q['queue_total_people_queue']; ?></td>


                        <td>
                            <a href="<?= base_url('admin/roleaccess/') . $q['queue_id']; ?>" class="badge badge-warning">access</a>
                            <a href="" class="badge badge-success">edit</a>
                            <a href="" class="badge badge-danger">delete</a>
                        </td>
                    </tr>
                    <?php $i++; ?>
                    <?php endforeach; ?>
                </tbody>
            </table>


        </div>
    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Modal -->

<!-- Modal -->
<div class="modal fade" id="newQueueModal" tabindex="-1" role="dialog" aria-labelledby="newQueueModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
               <!-- <h5 class="modal-title" id="newQueueModalLabel">Add New Role</h5> -->
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('admin'); ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control" id="queue" name="queue" placeholder="Queue List">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div> 

