.class public final Lcom/squareup/haha/guava/collect/Collections2;
.super Ljava/lang/Object;
.source "Collections2.java"


# static fields
.field static final STANDARD_JOINER:Lcom/squareup/haha/guava/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 323
    const-string v0, ", "

    .line 1071
    new-instance v1, Lcom/squareup/haha/guava/base/Joiner;

    invoke-direct {v1, v0}, Lcom/squareup/haha/guava/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 323
    const-string v0, "null"

    invoke-virtual {v1, v0}, Lcom/squareup/haha/guava/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/squareup/haha/guava/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/squareup/haha/guava/collect/Collections2;->STANDARD_JOINER:Lcom/squareup/haha/guava/base/Joiner;

    return-void
.end method

.method static safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 108
    invoke-static {p0}, Lcom/squareup/haha/guava/base/Joiner;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v1

    goto :goto_0

    .line 114
    :catch_1
    move-exception v1

    goto :goto_0
.end method
