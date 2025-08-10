.class public final Lcom/squareup/haha/guava/base/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/haha/guava/base/Predicates$InPredicate;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1078
    new-instance v0, Lcom/squareup/haha/guava/base/Joiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public static in(Ljava/util/Collection;)Lcom/squareup/haha/guava/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TT;>;)",
            "Lcom/squareup/haha/guava/base/Predicate",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "target":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    new-instance v0, Lcom/squareup/haha/guava/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;B)V

    return-object v0
.end method
