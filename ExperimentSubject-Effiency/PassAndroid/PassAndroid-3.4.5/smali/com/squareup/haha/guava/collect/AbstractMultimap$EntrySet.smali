.class final Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;
.super Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/haha/guava/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/AbstractMultimap",
        "<TK;TV;>.com/squareup/haha/guava/collect/AbstractMultimap$Entries;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V
    .locals 0
    .param p1, "x0"    # Lcom/squareup/haha/guava/collect/AbstractMultimap;

    .prologue
    .line 131
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/base/Joiner;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;, "Lcom/squareup/haha/guava/collect/AbstractMultimap<TK;TV;>.EntrySet;"
    const/4 v1, 0x0

    .line 134
    .line 2341
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2342
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 2344
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    .line 2346
    goto :goto_0

    :cond_0
    move v2, v1

    .line 2342
    goto :goto_1

    .line 134
    :cond_1
    return v0
.end method
