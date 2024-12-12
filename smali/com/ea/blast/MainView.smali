.class public Lcom/ea/blast/MainView;
.super Landroid/opengl/GLSurfaceView;
.source "MainView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/MainView$ConfigChooser;,
        Lcom/ea/blast/MainView$ContextFactory;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/MainView"


# instance fields
.field private mActivity:Lcom/ea/blast/MainActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 35
    check-cast p1, Lcom/ea/blast/MainActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    .line 36
    const/16 v0, 0x18

    const/4 v1, 0x2

    invoke-direct {p0, v2, v0, v2, v1}, Lcom/ea/blast/MainView;->init(ZIII)V

    .line 37
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method private init(ZIII)V
    .locals 8
    .param p1, "translucent"    # Z
    .param p2, "depth"    # I
    .param p3, "stencil"    # I
    .param p4, "glapi"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/16 v1, 0x8

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ea/blast/MainView;->Log(Ljava/lang/String;)V

    .line 90
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/ea/blast/MainView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 95
    :cond_0
    if-ne p4, v3, :cond_1

    .line 100
    new-instance v0, Lcom/ea/blast/MainView$ContextFactory;

    invoke-direct {v0, v3}, Lcom/ea/blast/MainView$ContextFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 103
    :cond_1
    if-ne p4, v4, :cond_2

    .line 108
    new-instance v0, Lcom/ea/blast/MainView$ContextFactory;

    invoke-direct {v0, v4}, Lcom/ea/blast/MainView$ContextFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 116
    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Lcom/ea/blast/MainView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;-><init>(IIIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 120
    new-instance v0, Lcom/ea/blast/AndroidRenderer;

    iget-object v1, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    invoke-direct {v0, v1}, Lcom/ea/blast/AndroidRenderer;-><init>(Lcom/ea/blast/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 122
    const-string v0, "...init([..])"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainView;->Log(Ljava/lang/String;)V

    .line 123
    return-void

    .line 116
    :cond_3
    new-instance v0, Lcom/ea/blast/MainView$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ea/blast/MainView$ConfigChooser;-><init>(IIIIIII)V

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainView;->Log(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ea/blast/MainView;->mActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0, p1}, Lcom/ea/blast/MainActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 55
    const/4 v0, 0x1

    return v0
.end method
