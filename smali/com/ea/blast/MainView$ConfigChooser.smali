.class Lcom/ea/blast/MainView$ConfigChooser;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/blast/MainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGlApi:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I
    .param p7, "glapi"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    .line 164
    iput p1, p0, Lcom/ea/blast/MainView$ConfigChooser;->mRedSize:I

    .line 165
    iput p2, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGreenSize:I

    .line 166
    iput p3, p0, Lcom/ea/blast/MainView$ConfigChooser;->mBlueSize:I

    .line 167
    iput p4, p0, Lcom/ea/blast/MainView$ConfigChooser;->mAlphaSize:I

    .line 168
    iput p5, p0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    .line 169
    iput p6, p0, Lcom/ea/blast/MainView$ConfigChooser;->mStencilSize:I

    .line 170
    iput p7, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    .line 171
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget p5, v0, v1

    .line 266
    .end local p5    # "defaultValue":I
    :cond_0
    return p5
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 179
    const/16 v0, 0x9

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 190
    .local v2, "s_configAttribs":[I
    iget v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    if-ne v0, v7, :cond_0

    .line 191
    aput v7, v2, v7

    .line 192
    :cond_0
    iget v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ea/blast/MainView$ConfigChooser;->mGlApi:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 193
    :cond_1
    const/4 v0, 0x4

    aput v0, v2, v7

    .line 196
    :cond_2
    new-array v5, v7, [I

    .line 197
    .local v5, "num_config":[I
    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 199
    aget v4, v5, v4

    .line 201
    .local v4, "numConfigs":I
    if-gtz v4, :cond_3

    .line 203
    const-string v0, "EAMCore/MainView"

    const-string v1, "No EGL configs available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No EGL configs available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_3
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v0, p1

    move-object v1, p2

    .line 209
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 215
    invoke-virtual {p0, p1, p2, v3}, Lcom/ea/blast/MainView$ConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 216
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz v6, :cond_4

    .line 219
    :cond_4
    return-object v6

    .line 179
    nop

    :array_0
    .array-data 4
        0x3040
        0x0
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3038
    .end array-data
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 17
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 224
    const/4 v10, 0x0

    .line 226
    .local v10, "bestCompatibleConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    :cond_0
    :goto_0
    if-nez v10, :cond_5

    .line 228
    move-object/from16 v8, p3

    .local v8, "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v14, :cond_3

    aget-object v4, v8, v13

    .line 230
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 231
    .local v11, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 234
    .local v16, "s":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    if-lt v11, v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mStencilSize:I

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    .line 228
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 237
    :cond_2
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 238
    .local v15, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 239
    .local v12, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 240
    .local v9, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ea/blast/MainView$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 243
    .local v7, "a":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mRedSize:I

    if-ne v15, v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mGreenSize:I

    if-ne v12, v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mBlueSize:I

    if-ne v9, v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mAlphaSize:I

    if-ne v7, v1, :cond_1

    .line 245
    move-object v10, v4

    .line 250
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7    # "a":I
    .end local v9    # "b":I
    .end local v11    # "d":I
    .end local v12    # "g":I
    .end local v15    # "r":I
    .end local v16    # "s":I
    :cond_3
    if-nez v10, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    if-lez v1, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    add-int/lit8 v1, v1, -0x8

    move-object/from16 v0, p0

    iput v1, v0, Lcom/ea/blast/MainView$ConfigChooser;->mDepthSize:I

    goto/16 :goto_0

    .line 255
    :cond_4
    const/4 v1, 0x0

    .line 259
    .end local v8    # "arr$":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    :goto_2
    return-object v1

    :cond_5
    move-object v1, v10

    goto :goto_2
.end method
