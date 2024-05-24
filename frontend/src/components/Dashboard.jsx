import React, { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import { jwtDecode } from "jwt-decode";

const Dashboard = () => {
  const [name, setName] = useState("");
  const [id, setId] = useState("");
  const [token, setToken] = useState("");
  const [expire, setExpire] = useState("");
  const [users, setUsers] = useState([]);
  const navigate = useNavigate();

  useEffect(() => {
    refreshToken();
    getUsers();
  }, []);

  const refreshToken = async () => {
    try {
      const response = await axiosJWT.get("http://localhost:8000/token");
      setToken(response.data.accessToken);
      const decoded = jwtDecode(response.data.accessToken);
      setName(decoded.name);
      setExpire(decoded.exp);
    } catch (error) {
      if (error.response) {
        navigate("/");
      }
    }
  };

  const axiosJWT = axios.create();

  axiosJWT.interceptors.request.use(
    async (config) => {
      const currentDate = new Date();
      if (expire * 1000 < currentDate.getTime()) {
        const response = await axios.get("http://localhost:8000/token");
        config.headers.Authorization = `Bearer ${response.data.accessToken}`;
        setToken(response.data.accessToken);
        const decoded = jwtDecode(response.data.accessToken);
        setName(decoded.name);
        setExpire(decoded.exp);
      }
      return config;
    },
    (error) => {
      return Promise.reject(error);
    }
  );

  const getUsers = async () => {
    const response = await axiosJWT.get("http://localhost:8000/users", {
      headers: {
        Authorization: `Bearer ${token}`,
      },
    });
    setUsers(response.data);
  };

  const handleHapusAkunButton = async () => {
    const confirmation = window.confirm("Apakah Anda yakin ingin menghapus akun ini?");
    if (confirmation) {
      try {
        // Lakukan proses penghapusan akun dengan menggunakan ID pengguna yang didapat dari token
        const response = await axiosJWT.get("http://localhost:8000/token");
        setToken(response.data.accessToken);
        const decoded = jwtDecode(response.data.accessToken);
        setId(decoded.id);
        await axiosJWT.delete(`http://localhost:8000/hapus-akun/${id}`, {
          headers: {
            Authorization: `Bearer ${token}`,
          },
        });
        // Jika penghapusan berhasil, perbarui daftar pengguna
        navigate("/");
      } catch (error) {
        console.error("Gagal menghapus akun:", error);
        // Tampilkan pesan kesalahan jika diperlukan
      }
    }
  };


  return (
    <div className="container mt-5">
      <h1 className="is-size-3">Welcome back! : {name}</h1>
      <h1 className="is-size-4 mt-5">Data semua user:</h1>
      <table className="table is-bordered is-fullwidth mt-5">
        <thead>
          <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          {users.map((user, index) => (
            <tr key={user.id}>
              <td>{index + 1}</td>
              <td>{user.name}</td>
              <td>{user.email}</td>
            </tr>
          ))}
        </tbody>
      </table>
      <h1 className="is-size-4 mt-5">Hapus akun: </h1>
      <button onClick={handleHapusAkunButton} className="button is-danger mt-5 mb-5">
        Hapus akun
      </button>
    </div>
  );
};

export default Dashboard;
