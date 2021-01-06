<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Data Pegawai <a class="btn btn-border btn-warning pull-right" href="<?= base_url(); ?>pegawai/tambah"><i class="
fas fa-plus"></i></a></h4>
            </div>
            <div class="card-body">

                <div class="table-responsive">
                    <table id="multi-filter-select" class="display table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>JK</th>
                                <th>TTL</th>
                                <th>NRP</th>
                                <th>NIP</th>
                                <th>Jabatan</th>
                                <th>Pangkat</th>
                                <th>Gol</th>
                                <th>Menu</th>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Nama</th>
                                <th>JK</th>
                                <th>TTL</th>
                                <th>NRP</th>
                                <th>NIP</th>
                                <th>Jabatan</th>
                                <th>Pangkat</th>
                                <th>Gol</th>

                            </tr>
                        </tfoot>
                        <tbody>
                            <?php foreach ($pegawai as $peg) : ?>
                                <tr>
                                    <td><?= $peg['nama']; ?></td>
                                    <td><?= $peg['jk']; ?></td>
                                    <td><?= $peg['tempat_lahir']; ?><br><?= $peg['tgl_lahir']; ?></td>
                                    <td><?= $peg['nrp']; ?></td>
                                    <td><?= $peg['nip']; ?></td>
                                    <td><?= $peg['jabatan']; ?></td>
                                    <td><?= $peg['pangkat']; ?></td>
                                    <td><?= $peg['gol']; ?></td>
                                    <td>
                                        <a data-toggle="modal" data-target=".bd-example-modal-lg<?= $peg['id']; ?>" class="btn btn-info btn-sm" data-popup="tooltip"><i class="far fa-eye"></i></a>

                                        <a href="<?= base_url(); ?>pegawai/ubah/<?= $peg['id']; ?>" class="btn btn-success btn-sm">
                                            <i class="far fa-edit"></i>
                                        </a>
                                        <a href="<?= base_url(); ?>pegawai/hapus/<?= $peg['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('yakin?');">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </td>

                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</div>
<?php foreach ($pegawai as $peg) : ?>
    <div class="modal fade bd-example-modal-lg<?= $peg['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Detail Pegawai</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="hidden" class="form-control" name="id" value="<?= $peg['id']; ?>">
                        <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?= $peg['nama']; ?>" required>
                    </div>
                    <div class="form-check">
                        <label>Jenis Kelamin</label><br />
                        <label class="form-radio-label">
                            <input type="text" class="form-control" name="jk" placeholder="Masukkan Nama" value="<?= $peg['jk']; ?>" required>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col">
                                <label>Tempat Lahir</label>
                                <input type="text" class="form-control" name="tempat_lahir" placeholder="Masukkan Tempat Lahir" value="<?= $peg['tempat_lahir']; ?>" required>
                            </div>
                            <div class="col">
                                <label>Tanggal Lahir</label>
                                <input type="date" class="form-control" name="tgl_lahir" placeholder="Masukkan Tanggal Lahir" value="<?= $peg['tgl_lahir']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-2">
                                <label>NRP</label>
                                <input type="text" class="form-control" name="nrp" placeholder="Masukkan NRP" value="<?= $peg['nrp']; ?>" required>
                            </div>
                            <div class="col-md-5">
                                <label>NIP</label>
                                <input type="text" class="form-control" name="nip" placeholder="Masukkan NIP" value="<?= $peg['nip']; ?>" required>
                            </div>
                            <div class="col-md-5">
                                <label>Jabatan</label>
                                <input type="text" class="form-control" name="jabatan" placeholder="Masukkan Jabatan" value="<?= $peg['jabatan']; ?>" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="hidden" class="form-control" name="id" value="<?= $peg['id']; ?>">
                        <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?= $peg['nama']; ?>" required>
                    </div>
                    <div class="form-check">
                        <label>Jenis Kelamin</label><br />
                        <label class="form-radio-label">
                            <input type="text" class="form-control" name="jk" placeholder="Masukkan Nama" value="<?= $peg['jk']; ?>" required>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col">
                                <label>Tempat Lahir</label>
                                <input type="text" class="form-control" name="tempat_lahir" placeholder="Masukkan Tempat Lahir" value="<?= $peg['tempat_lahir']; ?>" required>
                            </div>
                            <div class="col">
                                <label>Tanggal Lahir</label>
                                <input type="date" class="form-control" name="tgl_lahir" placeholder="Masukkan Tanggal Lahir" value="<?= $peg['tgl_lahir']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-2">
                                <label>NRP</label>
                                <input type="text" class="form-control" name="nrp" placeholder="Masukkan NRP" value="<?= $peg['nrp']; ?>" required>
                            </div>
                            <div class="col-md-5">
                                <label>NIP</label>
                                <input type="text" class="form-control" name="nip" placeholder="Masukkan NIP" value="<?= $peg['nip']; ?>" required>
                            </div>
                            <div class="col-md-5">
                                <label>Jabatan</label>
                                <input type="text" class="form-control" name="jabatan" placeholder="Masukkan Jabatan" value="<?= $peg['jabatan']; ?>" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>