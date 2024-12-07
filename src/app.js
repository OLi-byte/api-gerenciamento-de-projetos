import express from "express";
import projetoRoutes from "./routes/projetoRoutes.js";

const app = express();
app.use(express.json());

app.use("/projetos", projetoRoutes);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Server running on ${PORT}...`);
});
