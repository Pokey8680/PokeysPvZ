.class Lcom/inmobi/re/container/a$d;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/a;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/a;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/a;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/inmobi/re/container/a$d;->a:Lcom/inmobi/re/container/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/inmobi/re/container/a$d;->a:Lcom/inmobi/re/container/a;

    iget-object v0, v0, Lcom/inmobi/re/container/a;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->j(Lcom/inmobi/re/container/IMWebView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 855
    return-void
.end method
