import express from "express";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const app = express();
app.use(express.json());
const PORT = process.env.PORT || 3000;

app.post("/", async (req, res) => {
  const { nome, descricao, categoria, prazo, status } = req.body;
  try {
    const newProject = await prisma.projeto.create({
      data: {
        nome,
        descricao,
        categoria,
        prazo: new Date(prazo),
        status,
      },
    });

    res.status(201).json(newProject);
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: error });
  }
});

app.listen(PORT, () => {
  console.log(`Server running on ${PORT}...`);
});
