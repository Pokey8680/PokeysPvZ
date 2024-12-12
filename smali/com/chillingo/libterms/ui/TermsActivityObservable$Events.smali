.class public final enum Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/libterms/ui/TermsActivityObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

.field private static final synthetic a:[Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    const-string v1, "DIALOG_ACCEPT_WAS_PRESSED"

    invoke-direct {v0, v1, v2}, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    sget-object v1, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->DIALOG_ACCEPT_WAS_PRESSED:Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    aput-object v1, v0, v2

    sput-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->a:[Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->a:[Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    invoke-virtual {v0}, [Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    return-object v0
.end method
