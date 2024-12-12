.class final Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;
.super Ljava/lang/Object;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.ValuePredicate;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    .line 80
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;, "Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap<TK;TV;>.ValuePredicate;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;->this$0:Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap$ValuePredicate;->key:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;->access$000(Lorg/roboguice/shaded/goole/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
