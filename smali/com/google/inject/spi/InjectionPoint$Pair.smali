.class Lcom/google/inject/spi/InjectionPoint$Pair;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/spi/InjectionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/google/inject/spi/InjectionPoint$Pair;, "Lcom/google/inject/spi/InjectionPoint$Pair<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    .local p2, "b":Ljava/lang/Object;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    iput-object p1, p0, Lcom/google/inject/spi/InjectionPoint$Pair;->a:Ljava/lang/Object;

    .line 656
    iput-object p2, p0, Lcom/google/inject/spi/InjectionPoint$Pair;->b:Ljava/lang/Object;

    .line 657
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/inject/spi/InjectionPoint$Pair;, "Lcom/google/inject/spi/InjectionPoint$Pair<TA;TB;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    if-ne p0, p1, :cond_1

    .line 667
    :cond_0
    :goto_0
    return v1

    .line 663
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 665
    check-cast v0, Lcom/google/inject/spi/InjectionPoint$Pair;

    .line 667
    .local v0, "pair":Lcom/google/inject/spi/InjectionPoint$Pair;
    iget-object v3, p0, Lcom/google/inject/spi/InjectionPoint$Pair;->a:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/inject/spi/InjectionPoint$Pair;->a:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/inject/spi/InjectionPoint$Pair;->b:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/inject/spi/InjectionPoint$Pair;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 673
    .local p0, "this":Lcom/google/inject/spi/InjectionPoint$Pair;, "Lcom/google/inject/spi/InjectionPoint$Pair<TA;TB;>;"
    iget-object v1, p0, Lcom/google/inject/spi/InjectionPoint$Pair;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 674
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/inject/spi/InjectionPoint$Pair;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 675
    return v0
.end method
