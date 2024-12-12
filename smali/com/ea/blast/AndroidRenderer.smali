.class public Lcom/ea/blast/AndroidRenderer;
.super Ljava/lang/Object;
.source "AndroidRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/AndroidRenderer"


# instance fields
.field private mActivity:Lcom/ea/blast/MainActivity;

.field private mExceptionSet:Z


# direct methods
.method public constructor <init>(Lcom/ea/blast/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/ea/blast/MainActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    .line 43
    iput-object p1, p0, Lcom/ea/blast/AndroidRenderer;->mActivity:Lcom/ea/blast/MainActivity;

    .line 44
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/ea/blast/AndroidRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/AndroidRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    return p1
.end method


# virtual methods
.method public native NativeOnDrawFrame()V
.end method

.method public native NativeOnSurfaceChanged(II)V
.end method

.method public native NativeOnSurfaceCreated()V
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/ea/blast/AndroidRenderer;->NativeOnDrawFrame()V

    .line 50
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged(gl, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/blast/AndroidRenderer;->Log(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/ea/blast/AndroidRenderer;->NativeOnSurfaceChanged(II)V

    .line 57
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 62
    const-string v0, "onSurfaceCreated(gl, config)"

    invoke-direct {p0, v0}, Lcom/ea/blast/AndroidRenderer;->Log(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;

    invoke-direct {v1, p0}, Lcom/ea/blast/AndroidRenderer$GLExceptionHandler;-><init>(Lcom/ea/blast/AndroidRenderer;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/blast/AndroidRenderer;->mExceptionSet:Z

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/AndroidRenderer;->NativeOnSurfaceCreated()V

    .line 73
    return-void
.end method
