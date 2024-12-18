<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Messages;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class MessageController extends Controller
{
    /**
     * @OA\Get(
     *     path="/api/messages",
     *     operationId="getMessages",
     *     tags={"Messages"},
     *     summary="Get a list of messages",
     *     description="Fetch all messages",
     *     @OA\Response(
     *         response=200,
     *         description="Successful operation"
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Invalid request",
     *         @OA\JsonContent()
     *     )
     * )
     */
    public function index()
    {
        $messages = Messages::all();
        return response()->json($messages);
    }

    /**
     * @OA\Post(
     *     path="/api/messages",
     *     operationId="createMessage",
     *     tags={"Messages"},
     *     summary="Create a new message",
     *     description="Create a new message in the system",
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"user_id","text"},
     *             @OA\Property(property="user_id", type="integer", description="ID of the user sending the message"),
     *             @OA\Property(property="text", type="string", description="Message content")
     *         )
     *     ),
     *     @OA\Response(
     *         response=201,
     *         description="Message created successfully"
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Invalid input",
     *         @OA\JsonContent()
     *     )
     * )
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), Messages::rules());

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $message = Messages::create($request->all());

        return response()->json($message, 201);
    }

    /**
     * @OA\Get(
     *     path="/api/messages/{id}",
     *     operationId="getMessage",
     *     tags={"Messages"},
     *     summary="Get a specific message",
     *     description="Fetch a message by ID",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="ID of the message to fetch",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Message found"
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Message not found",
     *         @OA\JsonContent()
     *     )
     * )
     */
    public function show($id)
    {
        $message = Messages::find($id);

        if (!$message) {
            return response()->json(['message' => 'Message not found'], 404);
        }

        return response()->json($message);
    }

    /**
     * @OA\Put(
     *     path="/api/messages/{id}",
     *     operationId="updateMessage",
     *     tags={"Messages"},
     *     summary="Update a specific message",
     *     description="Update message content",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="ID of the message to update",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\RequestBody(
     *         required=true,
     *         @OA\JsonContent(
     *             required={"user_id","text"},
     *             @OA\Property(property="user_id", type="integer", description="ID of the user sending the message"),
     *             @OA\Property(property="text", type="string", description="Message content")
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Message updated successfully"
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Message not found",
     *         @OA\JsonContent()
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Invalid input",
     *         @OA\JsonContent()
     *     )
     * )
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), Messages::rules());

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $message = Messages::find($id);

        if (!$message) {
            return response()->json(['message' => 'Message not found'], 404);
        }

        $message->update($request->all());

        return response()->json($message);
    }

    /**
     * @OA\Delete(
     *     path="/api/messages/{id}",
     *     operationId="deleteMessage",
     *     tags={"Messages"},
     *     summary="Delete a specific message",
     *     description="Delete a message by ID",
     *     @OA\Parameter(
     *         name="id",
     *         in="path",
     *         required=true,
     *         description="ID of the message to delete",
     *         @OA\Schema(type="integer")
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Message deleted successfully",
     *         @OA\JsonContent()
     *     ),
     *     @OA\Response(
     *         response=404,
     *         description="Message not found",
     *         @OA\JsonContent()
     *     )
     * )
     */
    public function destroy($id)
    {
        $message = Messages::find($id);

        if (!$message) {
            return response()->json(['message' => 'Message not found'], 404);
        }

        $message->delete();

        return response()->json(['message' => 'Message deleted successfully']);
    }
}

class FooResponse {}
