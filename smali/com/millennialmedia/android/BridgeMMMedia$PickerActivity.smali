.class Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/BridgeMMMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PickerActivity"
.end annotation


# instance fields
.field private fileUri:Landroid/net/Uri;

.field hasRequestedPic:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 232
    invoke-super/range {p0 .. p3}, Lcom/millennialmedia/android/MMBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 233
    if-eqz p3, :cond_1

    .line 234
    const/16 v18, 0x0

    .line 235
    .local v18, "in":Ljava/io/InputStream;
    const/16 v22, 0x0

    .line 238
    .local v22, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 240
    .local v3, "contentUri":Landroid/net/Uri;
    if-nez v3, :cond_7

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 244
    .local v13, "bundle":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 247
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v17, "file":Ljava/io/File;
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    .local v10, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v6, 0x0

    invoke-virtual {v8, v5, v6, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 254
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 255
    .local v9, "bitmapdata":[B
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 257
    .local v11, "bs":Ljava/io/ByteArrayInputStream;
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v22    # "out":Ljava/io/OutputStream;
    .local v23, "out":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_2
    new-array v12, v5, [B

    .line 260
    .local v12, "buf":[B
    :goto_0
    invoke-virtual {v11, v12}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v21

    .local v21, "len":I
    if-lez v21, :cond_2

    .line 261
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    goto :goto_0

    .line 262
    .end local v12    # "buf":[B
    .end local v21    # "len":I
    :catch_0
    move-exception v16

    move-object/from16 v22, v23

    .line 263
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v17    # "file":Ljava/io/File;
    .end local v23    # "out":Ljava/io/OutputStream;
    .local v16, "e":Ljava/lang/Exception;
    .restart local v22    # "out":Ljava/io/OutputStream;
    :goto_1
    :try_start_3
    const-string v5, "BridgeMMMedia"

    const-string v6, "Problem getting bitmap from data"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz v18, :cond_0

    .line 268
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_0
    if-eqz v22, :cond_1

    .line 270
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 323
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMMedia;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 324
    :try_start_5
    invoke-static {}, Lcom/millennialmedia/android/BridgeMMMedia;->access$000()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 325
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->finish()V

    .line 327
    return-void

    .line 267
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bitmapdata":[B
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "buf":[B
    .restart local v13    # "bundle":Landroid/os/Bundle;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v21    # "len":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :cond_2
    if-eqz v18, :cond_3

    .line 268
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_3
    if-eqz v23, :cond_4

    .line 270
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object/from16 v22, v23

    .line 273
    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 271
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v16

    .line 272
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error closing file"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-object/from16 v22, v23

    .line 274
    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 271
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v12    # "buf":[B
    .end local v17    # "file":Ljava/io/File;
    .end local v21    # "len":I
    :catch_2
    move-exception v16

    .line 272
    :try_start_8
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error closing file"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 319
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    .line 320
    .restart local v16    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error with picture: "

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 266
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    .line 267
    :goto_4
    if-eqz v18, :cond_5

    .line 268
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 269
    :cond_5
    if-eqz v22, :cond_6

    .line 270
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 273
    :cond_6
    :goto_5
    :try_start_a
    throw v5

    .line 271
    :catch_4
    move-exception v16

    .line 272
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v6, "BridgeMMMedia"

    const-string v7, "Error closing file"

    move-object/from16 v0, v16

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 276
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz v3, :cond_1

    .line 278
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v4, v5

    .line 279
    .local v4, "proj":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 280
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-eqz v2, :cond_1

    .line 281
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 283
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 284
    const-string v5, "_data"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 286
    .local v20, "index":I
    const/4 v5, -0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_1

    .line 287
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 288
    new-instance v14, Ljava/io/File;

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v14, "chosenFile":Ljava/io/File;
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 294
    :try_start_b
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .restart local v17    # "file":Ljava/io/File;
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 297
    .end local v18    # "in":Ljava/io/InputStream;
    .local v19, "in":Ljava/io/InputStream;
    :try_start_c
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 298
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    const/16 v5, 0x400

    :try_start_d
    new-array v12, v5, [B

    .line 300
    .restart local v12    # "buf":[B
    :goto_6
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .restart local v21    # "len":I
    if-lez v21, :cond_9

    .line 301
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v12, v5, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_6

    .line 302
    .end local v12    # "buf":[B
    .end local v21    # "len":I
    :catch_5
    move-exception v16

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .line 303
    .end local v17    # "file":Ljava/io/File;
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v16    # "e":Ljava/lang/Exception;
    .restart local v18    # "in":Ljava/io/InputStream;
    :goto_7
    :try_start_e
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error copying image"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 306
    if-eqz v18, :cond_8

    .line 307
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_8
    if-eqz v22, :cond_1

    .line 309
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_2

    .line 310
    :catch_6
    move-exception v16

    .line 311
    :try_start_10
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error closing file"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_2

    .line 306
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v12    # "buf":[B
    .restart local v17    # "file":Ljava/io/File;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v21    # "len":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :cond_9
    if-eqz v19, :cond_a

    .line 307
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_a
    if-eqz v23, :cond_b

    .line 309
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    :cond_b
    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .line 313
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 310
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v16

    .line 311
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_12
    const-string v5, "BridgeMMMedia"

    const-string v6, "Error closing file"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .line 314
    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 305
    .end local v12    # "buf":[B
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v17    # "file":Ljava/io/File;
    .end local v21    # "len":I
    :catchall_1
    move-exception v5

    .line 306
    :goto_8
    if-eqz v18, :cond_c

    .line 307
    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V

    .line 308
    :cond_c
    if-eqz v22, :cond_d

    .line 309
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 313
    :cond_d
    :goto_9
    :try_start_14
    throw v5

    .line 310
    :catch_8
    move-exception v16

    .line 311
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v6, "BridgeMMMedia"

    const-string v7, "Error closing file"

    move-object/from16 v0, v16

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_9

    .line 325
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "contentUri":Landroid/net/Uri;
    .end local v4    # "proj":[Ljava/lang/String;
    .end local v14    # "chosenFile":Ljava/io/File;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v20    # "index":I
    .end local v22    # "out":Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    :try_start_15
    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v5

    .line 319
    .restart local v3    # "contentUri":Landroid/net/Uri;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bitmapdata":[B
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "buf":[B
    .restart local v13    # "bundle":Landroid/os/Bundle;
    .restart local v16    # "e":Ljava/lang/Exception;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v18    # "in":Ljava/io/InputStream;
    .restart local v21    # "len":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catch_9
    move-exception v16

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto/16 :goto_3

    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "proj":[Ljava/lang/String;
    .restart local v14    # "chosenFile":Ljava/io/File;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v20    # "index":I
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catch_a
    move-exception v16

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 305
    .end local v12    # "buf":[B
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v18    # "in":Ljava/io/InputStream;
    .end local v21    # "len":I
    .restart local v19    # "in":Ljava/io/InputStream;
    :catchall_3
    move-exception v5

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto :goto_8

    .end local v18    # "in":Ljava/io/InputStream;
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v19    # "in":Ljava/io/InputStream;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catchall_4
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto :goto_8

    .line 302
    .end local v17    # "file":Ljava/io/File;
    :catch_b
    move-exception v16

    goto :goto_7

    .end local v18    # "in":Ljava/io/InputStream;
    .restart local v17    # "file":Ljava/io/File;
    .restart local v19    # "in":Ljava/io/InputStream;
    :catch_c
    move-exception v16

    move-object/from16 v18, v19

    .end local v19    # "in":Ljava/io/InputStream;
    .restart local v18    # "in":Ljava/io/InputStream;
    goto :goto_7

    .line 266
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "proj":[Ljava/lang/String;
    .end local v14    # "chosenFile":Ljava/io/File;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v20    # "index":I
    .end local v22    # "out":Ljava/io/OutputStream;
    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "bitmapdata":[B
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .restart local v13    # "bundle":Landroid/os/Bundle;
    .restart local v23    # "out":Ljava/io/OutputStream;
    :catchall_5
    move-exception v5

    move-object/from16 v22, v23

    .end local v23    # "out":Ljava/io/OutputStream;
    .restart local v22    # "out":Ljava/io/OutputStream;
    goto/16 :goto_4

    .line 262
    .end local v9    # "bitmapdata":[B
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "bs":Ljava/io/ByteArrayInputStream;
    .end local v17    # "file":Ljava/io/File;
    :catch_d
    move-exception v16

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 193
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 197
    .local v0, "inState":Landroid/os/Bundle;
    const-string v2, "hasRequestedPic"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 201
    .end local v0    # "inState":Landroid/os/Bundle;
    :cond_0
    iget-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    if-nez v2, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->fileUri:Landroid/net/Uri;

    .line 214
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    iput-boolean v4, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 217
    invoke-virtual {p0, v1, v5}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 220
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iput-boolean v4, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    .line 223
    invoke-virtual {p0, v1, v5}, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 182
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "outState":Landroid/os/Bundle;
    const-string v1, "hasRequestedPic"

    iget-boolean v2, p0, Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;->hasRequestedPic:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-object v0
.end method
