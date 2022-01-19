defmodule CC.EditorTest do
  use CC.DataCase

  alias CC.Editor

  describe "sessions" do
    alias CC.Editor.Session

    import CC.EditorFixtures

    @invalid_attrs %{}

    test "list_sessions/0 returns all sessions" do
      session = session_fixture()
      assert Editor.list_sessions() == [session]
    end

    test "get_session!/1 returns the session with given id" do
      session = session_fixture()
      assert Editor.get_session!(session.id) == session
    end

    test "create_session/1 with valid data creates a session" do
      valid_attrs = %{}

      assert {:ok, %Session{} = session} = Editor.create_session(valid_attrs)
    end

    test "create_session/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Editor.create_session(@invalid_attrs)
    end

    test "update_session/2 with valid data updates the session" do
      session = session_fixture()
      update_attrs = %{}

      assert {:ok, %Session{} = session} = Editor.update_session(session, update_attrs)
    end

    test "update_session/2 with invalid data returns error changeset" do
      session = session_fixture()
      assert {:error, %Ecto.Changeset{}} = Editor.update_session(session, @invalid_attrs)
      assert session == Editor.get_session!(session.id)
    end

    test "delete_session/1 deletes the session" do
      session = session_fixture()
      assert {:ok, %Session{}} = Editor.delete_session(session)
      assert_raise Ecto.NoResultsError, fn -> Editor.get_session!(session.id) end
    end

    test "change_session/1 returns a session changeset" do
      session = session_fixture()
      assert %Ecto.Changeset{} = Editor.change_session(session)
    end
  end
end
