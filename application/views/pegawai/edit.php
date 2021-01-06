<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Ubah Data</h4>

            </div>
            <div class="card-body">

                <form action="<?= base_url() ?>pegawai/ubah_aksi" method="POST">
                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="hidden" class="form-control" name="id" value="<?= $pegawai['id']; ?>">
                        <input type="text" class="form-control" name="nama" placeholder="Masukkan Nama" value="<?= $pegawai['nama']; ?>" required>
                    </div>
                    <div class="form-check">
                        <label>Jenis Kelamin</label><br />
                        <label class="form-radio-label">
                            <input class="form-radio-input" name="jk" type="radio" value="Laki-Laki" <?php if ($pegawai['jk'] == 'Laki-Laki') echo 'checked' ?>>
                            <span class="form-radio-sign">Laki-Laki</span>
                        </label>
                        <label class="form-radio-label ml-3">
                            <input class="form-radio-input" name="jk" type="radio" value="Perempuan" <?php if ($pegawai['jk'] == 'Perempuan') echo 'checked' ?>>
                            <span class="form-radio-sign">Perempuan</span>
                        </label>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col">
                                <label>Tempat Lahir</label>
                                <input type="text" class="form-control" name="tempat_lahir" placeholder="Masukkan Tempat Lahir" value="<?= $pegawai['tempat_lahir']; ?>" required>
                            </div>
                            <div class="col">
                                <label>Tanggal Lahir</label>
                                <input type="date" class="form-control" name="tgl_lahir" placeholder="Masukkan Tanggal Lahir" value="<?= $pegawai['tgl_lahir']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-2">
                                <label>NRP</label>
                                <input type="text" class="form-control" name="nrp" placeholder="Masukkan NRP" value="<?= $pegawai['nrp']; ?>" required>
                            </div>
                            <div class="col-md-5">
                                <label>NIP</label>
                                <input type="text" class="form-control" name="nip" placeholder="Masukkan NIP" value="<?= $pegawai['nip']; ?>" required>
                            </div>
                            <div class="col-md-5">
                                <label>Jabatan</label>
                                <input type="text" class="form-control" name="jabatan" placeholder="Masukkan Jabatan" value="<?= $pegawai['jabatan']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-4">
                                <label>Nama Pangkat</label>
                                <select name="pangkat" class="form-control" required>
                                    <option>--Pilih--</option>
                                    <option <?php if ($pegawai['pangkat'] == '1') {
                                                echo "selected";
                                            } ?> value='1'>1</option>
                                    <option <?php if ($pegawai['pangkat'] == '2') {
                                                echo "selected";
                                            } ?> value='2'>2</option>
                                    <option <?php if ($pegawai['pangkat'] == '3') {
                                                echo "selected";
                                            } ?> value='3'>3</option>

                                </select>
                            </div>
                            <div class="col-md-4">
                                <label>Gol/Ruang</label>
                                <select name="gol" class="form-control" required>
                                    <option>--Pilih--</option>
                                    <option <?php if ($pegawai['gol'] == '1') {
                                                echo "selected";
                                            } ?> value='1'>1</option>
                                    <option <?php if ($pegawai['gol'] == '2') {
                                                echo "selected";
                                            } ?> value='2'>2</option>
                                    <option <?php if ($pegawai['gol'] == '3') {
                                                echo "selected";
                                            } ?> value='3'>3</option>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <label>TMT</label>
                                <input type="date" class="form-control" name="tmt1" placeholder="Masukkan Tanggal TMT" value="<?= $pegawai['tmt']; ?>" required>
                            </div>
                        </div>
                    </div>
                    <div class="card-action pull-right">
                        <button class="btn btn-success" type="submit">Submit</button>
                        <button class="btn btn-danger" type="reset">Cancel</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

</div>