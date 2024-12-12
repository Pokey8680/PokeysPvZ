.class Lcom/chillingo/libterms/ui/TermsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/libterms/ui/TermsActivity;->a()V
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
    .line 224
    iput-object p1, p0, Lcom/chillingo/libterms/ui/TermsActivity$1;->a:Lcom/chillingo/libterms/ui/TermsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivity$1;->a:Lcom/chillingo/libterms/ui/TermsActivity;

    invoke-static {v0}, Lcom/chillingo/libterms/ui/TermsActivity;->a(Lcom/chillingo/libterms/ui/TermsActivity;)V

    .line 228
    return-void
.end method
