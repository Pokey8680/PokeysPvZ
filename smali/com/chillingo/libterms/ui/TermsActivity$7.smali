.class Lcom/chillingo/libterms/ui/TermsActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/libterms/ui/TermsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chillingo/libterms/ui/TermsActivity;


# direct methods
.method constructor <init>(Lcom/chillingo/libterms/ui/TermsActivity;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/chillingo/libterms/ui/TermsActivity$7;->a:Lcom/chillingo/libterms/ui/TermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 577
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_1

    .line 579
    :cond_0
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    .line 583
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 585
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/chillingo/libterms/ui/TermsActivity$7;->a:Lcom/chillingo/libterms/ui/TermsActivity;

    invoke-virtual {v1, v0}, Lcom/chillingo/libterms/ui/TermsActivity;->startActivity(Landroid/content/Intent;)V

    .line 591
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
