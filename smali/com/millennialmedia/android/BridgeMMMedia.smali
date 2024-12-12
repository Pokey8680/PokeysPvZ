.class Lcom/millennialmedia/android/BridgeMMMedia;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/BridgeMMMedia$Audio;,
        Lcom/millennialmedia/android/BridgeMMMedia$PickerActivity;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "path"

.field private static final TAG:Ljava/lang/String; = "BridgeMMMedia"

.field private static pickerActivityObject:Ljava/lang/Object;


# instance fields
.field private AVAILABLE_SOURCE_TYPES:Ljava/lang/String;

.field private GET_DEVICE_VOLUME:Ljava/lang/String;

.field private GET_PICTURE:Ljava/lang/String;

.field private IS_SOURCE_TYPE_AVAILABLE:Ljava/lang/String;

.field private PLAY_AUDIO:Ljava/lang/String;

.field private PLAY_SOUND:Ljava/lang/String;

.field private PLAY_VIDEO:Ljava/lang/String;

.field private STOP_AUDIO:Ljava/lang/String;

.field private WRITE_TO_PHOTO_LIBRARY:Ljava/lang/String;

.field mediaScanner:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 53
    const-string v0, "isSourceTypeAvailable"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->IS_SOURCE_TYPE_AVAILABLE:Ljava/lang/String;

    .line 54
    const-string v0, "availableSourceTypes"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->AVAILABLE_SOURCE_TYPES:Ljava/lang/String;

    .line 55
    const-string v0, "getPicture"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->GET_PICTURE:Ljava/lang/String;

    .line 56
    const-string v0, "writeToPhotoLibrary"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->WRITE_TO_PHOTO_LIBRARY:Ljava/lang/String;

    .line 57
    const-string v0, "playVideo"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->PLAY_VIDEO:Ljava/lang/String;

    .line 58
    const-string v0, "stopAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->STOP_AUDIO:Ljava/lang/String;

    .line 59
    const-string v0, "getDeviceVolume"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->GET_DEVICE_VOLUME:Ljava/lang/String;

    .line 60
    const-string v0, "playAudio"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->PLAY_AUDIO:Ljava/lang/String;

    .line 61
    const-string v0, "playSound"

    iput-object v0, p0, Lcom/millennialmedia/android/BridgeMMMedia;->PLAY_SOUND:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    return-object v0
.end method

.method private static centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 370
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 372
    .local v1, "y":F
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-static {p0, v2, v3, p1, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 378
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isCameraAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 100
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 103
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 110
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private isPictureChooserAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 117
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 126
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private static resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "newW"    # I
    .param p2, "newH"    # I
    .param p3, "quality"    # I

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "contentMode"    # Ljava/lang/String;
    .param p2, "toW"    # I
    .param p3, "toH"    # I
    .param p4, "quality"    # I

    .prologue
    const/4 v7, 0x0

    .line 333
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 334
    .local v0, "horizontalRatio":F
    int-to-float v5, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 340
    .local v4, "verticalRatio":F
    const-string v5, "Center"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    invoke-static {p0, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 356
    :goto_0
    return-object v5

    .line 342
    :cond_0
    const-string v5, "ScaleToAspectFit"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 344
    .local v3, "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 345
    .local v2, "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 346
    .local v1, "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 347
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_1
    const-string v5, "ScaleToAspectFill"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 348
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 349
    .restart local v3    # "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 350
    .restart local v2    # "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 353
    .restart local v1    # "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v7, v7, p2, p3}, Lcom/millennialmedia/android/BridgeMMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 356
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method private static final scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B
    .locals 22
    .param p0, "file"    # Ljava/io/File;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "contentMode"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v10, 0x0

    .line 385
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 386
    .local v12, "fis2":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 388
    .local v17, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 391
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 392
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 394
    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 395
    .local v14, "height":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 396
    .local v18, "width":I
    const/4 v15, 0x1

    .line 398
    .local v15, "inSampleSize":I
    move/from16 v0, p2

    if-gt v14, v0, :cond_0

    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    .line 399
    :cond_0
    move/from16 v0, v18

    if-le v0, v14, :cond_8

    .line 400
    int-to-float v0, v14

    move/from16 v19, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 407
    :cond_1
    :goto_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 409
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .local v13, "fis2":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 410
    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 411
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v17

    .line 416
    if-eqz v11, :cond_2

    .line 417
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 418
    :cond_2
    if-eqz v13, :cond_3

    .line 419
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 425
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .line 426
    .local v7, "contents":[B
    if-eqz v17, :cond_7

    .line 427
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/millennialmedia/android/BridgeMMMedia;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 428
    .local v9, "finalBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 431
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 432
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    const-string v19, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 433
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 437
    :goto_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 443
    if-eqz v17, :cond_5

    .line 444
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_5
    if-eqz v9, :cond_6

    .line 446
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_6
    if-eqz v6, :cond_7

    .line 448
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 454
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_3
    return-object v7

    .line 402
    .end local v7    # "contents":[B
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :cond_8
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    :try_start_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v15

    goto :goto_0

    .line 420
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 421
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "BridgeMMMedia"

    const-string v20, "Error closing file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 423
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 412
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    :catch_1
    move-exception v8

    .line 413
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_8
    const-string v19, "BridgeMMMedia"

    const-string v20, "Can\'t find file to scale bitmap"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 416
    if-eqz v10, :cond_9

    .line 417
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 418
    :cond_9
    if-eqz v12, :cond_4

    .line 419
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 420
    :catch_2
    move-exception v8

    .line 421
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "BridgeMMMedia"

    const-string v20, "Error closing file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 415
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    .line 416
    :goto_5
    if-eqz v10, :cond_a

    .line 417
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 418
    :cond_a
    if-eqz v12, :cond_b

    .line 419
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 422
    :cond_b
    :goto_6
    throw v19

    .line 420
    :catch_3
    move-exception v8

    .line 421
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v20, "BridgeMMMedia"

    const-string v21, "Error closing file"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 436
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "contents":[B
    .restart local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_b
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    .line 438
    :catch_4
    move-exception v8

    move-object v5, v6

    .line 439
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_7
    const/4 v7, 0x0

    .line 440
    :try_start_c
    const-string v19, "BridgeMMMedia"

    const-string v20, "Error scaling bitmap"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 443
    if-eqz v17, :cond_d

    .line 444
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_d
    if-eqz v9, :cond_e

    .line 446
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_e
    if-eqz v5, :cond_7

    .line 448
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_3

    .line 449
    :catch_5
    move-exception v8

    .line 450
    const-string v19, "BridgeMMMedia"

    const-string v20, "Error closing file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 449
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_6
    move-exception v8

    .line 450
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v19, "BridgeMMMedia"

    const-string v20, "Error closing file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 442
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v19

    .line 443
    :goto_8
    if-eqz v17, :cond_f

    .line 444
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_f
    if-eqz v9, :cond_10

    .line 446
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 447
    :cond_10
    if-eqz v5, :cond_11

    .line 448
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 451
    :cond_11
    :goto_9
    throw v19

    .line 449
    :catch_7
    move-exception v8

    .line 450
    .restart local v8    # "e":Ljava/lang/Exception;
    const-string v20, "BridgeMMMedia"

    const-string v21, "Error closing file"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 442
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v19

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 438
    :catch_8
    move-exception v8

    goto :goto_7

    .line 415
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "contents":[B
    .end local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v19

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :catchall_4
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 412
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v8

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :catch_a
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4
.end method

.method private scanMedia(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 574
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 575
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 576
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/BridgeMMMedia$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/BridgeMMMedia$1;-><init>(Lcom/millennialmedia/android/BridgeMMMedia;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    .line 594
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 597
    :cond_0
    return-void
.end method


# virtual methods
.method public availableSourceTypes(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 161
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    const-string v2, "Photo Library"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 166
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 167
    .local v1, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 168
    iput-object v0, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 169
    return-object v1
.end method

.method executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 73
    .local v0, "response":Lcom/millennialmedia/android/MMJSResponse;
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->IS_SOURCE_TYPE_AVAILABLE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->isSourceTypeAvailable(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->AVAILABLE_SOURCE_TYPES:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->availableSourceTypes(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->GET_PICTURE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->getPicture(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->WRITE_TO_PHOTO_LIBRARY:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->writeToPhotoLibrary(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->PLAY_VIDEO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->STOP_AUDIO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->GET_DEVICE_VOLUME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 86
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->getDeviceVolume(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_7
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->PLAY_AUDIO:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 88
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_8
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->PLAY_SOUND:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMMedia;->playSound(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceVolume(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 703
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 704
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 705
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getMediaVolume(Landroid/content/Context;)I

    move-result v2

    .line 706
    .local v2, "volume":I
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 707
    .local v1, "response":Lcom/millennialmedia/android/MMJSResponse;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 710
    .end local v1    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v2    # "volume":I
    :goto_0
    return-object v1

    :cond_0
    const-string v3, "no volume available"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getPicture(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 469
    .local v4, "context":Landroid/content/Context;
    const-string v13, "sourceType"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 470
    .local v10, "type":Ljava/lang/String;
    const-string v13, "constrainHeight"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 471
    .local v8, "height":Ljava/lang/String;
    const-string v13, "constrainWidth"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 473
    .local v12, "width":Ljava/lang/String;
    const-string v13, "contentMode"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "contentMode":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 475
    const-string v2, ""

    .line 476
    :cond_0
    if-eqz v8, :cond_1

    if-nez v12, :cond_2

    .line 477
    :cond_1
    const-string v13, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v13}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 519
    :goto_0
    monitor-exit p0

    return-object v9

    .line 480
    :cond_2
    :try_start_1
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    float-to-int v7, v13

    .line 481
    .local v7, "h":I
    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    float-to-int v11, v13

    .line 482
    .local v11, "w":I
    mul-int v13, v7, v11

    const v14, 0x57e40

    if-le v13, v14, :cond_3

    .line 483
    const-string v13, "constrainHeight * constrainWidth > 360000"

    invoke-static {v13}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v9

    goto :goto_0

    .line 487
    :cond_3
    if-eqz v4, :cond_7

    if-eqz v10, :cond_7

    .line 488
    new-instance v6, Ljava/io/File;

    invoke-static {v4}, Lcom/millennialmedia/android/AdCache;->getInternalCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tmp_mm_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    .local v6, "file":Ljava/io/File;
    const-string v13, "Camera"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v13

    if-nez v13, :cond_6

    :cond_4
    const-string v13, "Photo Library"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "PhotoLibrary"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_7

    .line 494
    :cond_6
    :try_start_2
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    sput-object v13, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 495
    sget-object v14, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 496
    :try_start_3
    invoke-static {v4, v6, v10}, Lcom/millennialmedia/android/Utils$IntentUtils;->startPickerActivity(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 497
    sget-object v13, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V

    .line 498
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    const/4 v13, 0x0

    :try_start_4
    sput-object v13, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 506
    :goto_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_7

    .line 507
    invoke-static {v6, v11, v7, v2}, Lcom/millennialmedia/android/BridgeMMMedia;->scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v3

    .line 509
    .local v3, "contents":[B
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 510
    if-eqz v3, :cond_7

    .line 511
    new-instance v9, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v9}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 512
    .local v9, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v13, 0x1

    iput v13, v9, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 513
    iput-object v3, v9, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 468
    .end local v2    # "contentMode":Ljava/lang/String;
    .end local v3    # "contents":[B
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "h":I
    .end local v8    # "height":Ljava/lang/String;
    .end local v9    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "w":I
    .end local v12    # "width":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 498
    .restart local v2    # "contentMode":Ljava/lang/String;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "h":I
    .restart local v8    # "height":Ljava/lang/String;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "w":I
    .restart local v12    # "width":Ljava/lang/String;
    :catchall_1
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 499
    :catch_0
    move-exception v5

    .line 500
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v13, "BridgeMMMedia"

    const-string v14, "Error with pickerActivity synchronization"

    invoke-static {v13, v14, v5}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 503
    const/4 v13, 0x0

    :try_start_8
    sput-object v13, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v13

    const/4 v14, 0x0

    sput-object v14, Lcom/millennialmedia/android/BridgeMMMedia;->pickerActivityObject:Ljava/lang/Object;

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 519
    .end local v6    # "file":Ljava/io/File;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sourceType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 139
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 140
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "true"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 146
    :goto_0
    return-object v1

    .line 142
    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/BridgeMMMedia;->isPictureChooserAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    const-string v1, "true"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0

    .line 146
    :cond_1
    const-string v1, "false"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0
.end method

.method public playAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 634
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 635
    .local v1, "context":Landroid/content/Context;
    const-string v5, "path"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 637
    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 639
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-nez v0, :cond_1

    .line 656
    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :cond_0
    :goto_0
    return-object v4

    .line 641
    .restart local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 642
    const-string v4, "Audio already playing."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 644
    :cond_2
    const-string v5, "http"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 645
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "repeat"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 648
    :cond_3
    invoke-static {v1, v3}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 649
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 650
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v4, "repeat"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v5, v4}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public playSound(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 668
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_0

    move-object v4, v5

    .line 681
    :goto_0
    return-object v4

    .line 670
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 671
    .local v1, "context":Landroid/content/Context;
    const-string v4, "path"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 672
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 673
    invoke-static {v1, v3}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 674
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 677
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    move-object v4, v5

    .line 681
    goto :goto_0
.end method

.method public playVideo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 609
    .local v0, "context":Landroid/content/Context;
    const-string v3, "path"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 610
    .local v2, "path":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 611
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    invoke-static {v0, v2}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/lang/String;)V

    .line 613
    invoke-static {v2}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 622
    :goto_0
    return-object v3

    .line 615
    :cond_0
    invoke-static {v0, v2}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 616
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    invoke-static {v0, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->startVideoPlayerActivityWithData(Landroid/content/Context;Ljava/io/File;)V

    .line 618
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_0

    .line 622
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 690
    .local v0, "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 693
    .end local v0    # "audio":Lcom/millennialmedia/android/BridgeMMMedia$Audio;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized writeToPhotoLibrary(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/millennialmedia/android/BridgeMMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 535
    .local v0, "context":Landroid/content/Context;
    const-string v8, "path"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 537
    .local v3, "pathString":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 538
    const-string v8, "path"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 539
    .local v2, "path":Landroid/net/Uri;
    const-string v6, "Pictures"

    .line 542
    .local v6, "subDirectory":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v8, "http"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 545
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, "url":Ljava/lang/String;
    const-string v8, "Pictures"

    invoke-static {v7, v8, v1, v0}, Lcom/millennialmedia/android/AdCache;->downloadComponentExternalStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 549
    const-string v8, "Failed to download"

    invoke-static {v8}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 567
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "path":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v6    # "subDirectory":Ljava/lang/String;
    .end local v7    # "url":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v8

    .line 553
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "path":Landroid/net/Uri;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v6    # "subDirectory":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v8, "Pictures"

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/millennialmedia/android/AdCache;->getDownloadFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 555
    .local v5, "source":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 556
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No file at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v8

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/millennialmedia/android/BridgeMMMedia;->scanMedia(Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/millennialmedia/android/AdCache;->isExternalMounted()Z

    move-result v8

    if-nez v8, :cond_2

    .line 561
    const-string v8, "Storage not mounted, cannot add image to photo library photo library"

    invoke-static {v8}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v8

    goto :goto_0

    .line 564
    :cond_2
    const-string v8, "Image saved to photo library"

    invoke-static {v8}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 567
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "path":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "source":Ljava/io/File;
    .end local v6    # "subDirectory":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 534
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "pathString":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method
