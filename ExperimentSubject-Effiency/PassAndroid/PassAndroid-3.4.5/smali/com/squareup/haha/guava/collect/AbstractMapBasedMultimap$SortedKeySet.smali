.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;",
        "Ljava/util/SortedSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    .local p2, "subMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 984
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 985
    return-void
.end method

.method private sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 988
    .line 4484
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$KeySet;->map:Ljava/util/Map;

    .line 988
    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 993
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 998
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    .local p1, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1013
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    .local p2, "toElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1018
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;, "Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap<TK;TV;>.SortedKeySet;"
    .local p1, "fromElement":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method
