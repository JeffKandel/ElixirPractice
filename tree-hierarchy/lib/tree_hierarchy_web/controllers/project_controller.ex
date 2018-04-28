defmodule TreeHierarchyWeb.ProjectController do
  # use TreeHierarchyWeb, :controller

  # alias TreeHierarchy.Hierarchy
  # alias TreeHierarchy.Hierarchy.Project

  # action_fallback TreeHierarchyWeb.FallbackController

  # def index(conn, _params) do
  #   projects = Hierarchy.list_projects()
  #   render(conn, "index.json", projects: projects)
  # end

  # def create(conn, %{"project" => project_params}) do
  #   with {:ok, %Project{} = project} <- Hierarchy.create_project(project_params) do
  #     conn
  #     |> put_status(:created)
  #     |> put_resp_header("location", project_path(conn, :show, project))
  #     |> render("show.json", project: project)
  #   end
  # end

  # def show(conn, %{"id" => id}) do
  #   project = Hierarchy.get_project!(id)
  #   render(conn, "show.json", project: project)
  # end

  # def update(conn, %{"id" => id, "project" => project_params}) do
  #   project = Hierarchy.get_project!(id)

  #   with {:ok, %Project{} = project} <- Hierarchy.update_project(project, project_params) do
  #     render(conn, "show.json", project: project)
  #   end
  # end

  # def delete(conn, %{"id" => id}) do
  #   project = Hierarchy.get_project!(id)
  #   with {:ok, %Project{}} <- Hierarchy.delete_project(project) do
  #     send_resp(conn, :no_content, "")
  #   end
  # end
end
