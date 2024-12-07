import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function createProject(req, res) {
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
    console.error(error.message);
    res.status(500).json({ message: "Erro ao criar projeto" });
  }
}

export async function getAllProjects(req, res) {
  try {
    const projetos = await prisma.projeto.findMany();
    res.status(200).json(projetos);
  } catch (error) {
    console.error(error.message);
    res.status(500).json({ error: "Erro ao buscar projetos" });
  }
}
