import express from "express";
import * as projetoController from "../controllers/projetoController.js";

const router = express.Router();

router.post("/", projetoController.createProject);
router.get("/", projetoController.getAllProjects);

export default router;
