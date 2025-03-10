defmodule OpenAI.ClientBehaviour do
  @callback api_get(String.t(), list(), map()) ::
    {:ok, map()} | {:error, term()}

  @callback api_post(String.t(), list(), map()) ::
    {:ok, map()} | {:error, term()} | OpenAI.Stream.t()

  @callback multipart_api_post(String.t(), Path.t(), String.t(), list(), map()) ::
    {:ok, map()} | {:error, term()}

  @callback api_delete(String.t(), map()) ::
    {:ok, map()} | {:error, term()}
end
