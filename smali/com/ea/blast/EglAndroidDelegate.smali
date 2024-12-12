.class Lcom/ea/blast/EglAndroidDelegate;
.super Ljava/lang/Object;
.source "EglAndroidDelegate.java"


# static fields
.field public static sNativeSurface:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetEgl()Ljavax/microedition/khronos/egl/EGL10;
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method public static GetEglNoContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method public static GetEglNoDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method public static GetEglNoSurface()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method public static GetSurface()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ea/blast/EglAndroidDelegate;->sNativeSurface:Landroid/view/SurfaceHolder;

    return-object v0
.end method
