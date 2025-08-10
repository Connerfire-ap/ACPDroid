.class public final Lcom/github/salomonbrys/kodein/ErasedCompKt;
.super Ljava/lang/Object;
.source "erasedComp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0000\u001a\u001f\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001H\u0086\u0008\u001a\'\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0005\u0018\u0001H\u0086\u0008\u001a/\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001\"\u0006\u0008\u0002\u0010\u0005\u0018\u0001\"\u0006\u0008\u0003\u0010\u0007\u0018\u0001H\u0086\u0008\u001a\u001d\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\t0\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u0001H\u0086\u0008\u00a8\u0006\n"
    }
    d2 = {
        "erasedComp1",
        "Lcom/github/salomonbrys/kodein/CompositeTypeToken;",
        "T",
        "A1",
        "erasedComp2",
        "A2",
        "erasedComp3",
        "A3",
        "erasedSet",
        "",
        "kodein-core_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method private static final erasedComp1()Lcom/github/salomonbrys/kodein/CompositeTypeToken;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/salomonbrys/kodein/CompositeTypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 11
    new-instance v2, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    .line 43
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v1, "T"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/github/salomonbrys/kodein/TypeToken;

    .line 11
    const/4 v4, 0x0

    .line 44
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v5, "A1"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 11
    invoke-direct {v2, v0, v3}, Lcom/github/salomonbrys/kodein/CompositeTypeToken;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;[Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v2
.end method

.method private static final erasedComp2()Lcom/github/salomonbrys/kodein/CompositeTypeToken;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/salomonbrys/kodein/CompositeTypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 22
    new-instance v2, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    .line 45
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v1, "T"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    const/4 v1, 0x2

    new-array v3, v1, [Lcom/github/salomonbrys/kodein/TypeToken;

    .line 22
    const/4 v4, 0x0

    .line 46
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v5, "A1"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 22
    const/4 v4, 0x1

    .line 47
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v5, "A2"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 22
    invoke-direct {v2, v0, v3}, Lcom/github/salomonbrys/kodein/CompositeTypeToken;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;[Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v2
.end method

.method private static final erasedComp3()Lcom/github/salomonbrys/kodein/CompositeTypeToken;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/salomonbrys/kodein/CompositeTypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 34
    new-instance v2, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    .line 48
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v1, "T"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    const/4 v1, 0x3

    new-array v3, v1, [Lcom/github/salomonbrys/kodein/TypeToken;

    .line 34
    const/4 v4, 0x0

    .line 49
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v5, "A1"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 34
    const/4 v4, 0x1

    .line 50
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v5, "A2"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_2

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 34
    const/4 v4, 0x2

    .line 51
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-string v5, "A3"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_3

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 34
    invoke-direct {v2, v0, v3}, Lcom/github/salomonbrys/kodein/CompositeTypeToken;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;[Lcom/github/salomonbrys/kodein/TypeToken;)V

    return-object v2
.end method

.method private static final erasedSet()Lcom/github/salomonbrys/kodein/CompositeTypeToken;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/salomonbrys/kodein/CompositeTypeToken",
            "<",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 41
    nop

    .line 52
    new-instance v2, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    .line 53
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-class v1, Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    const/4 v1, 0x1

    new-array v3, v1, [Lcom/github/salomonbrys/kodein/TypeToken;

    .line 52
    const/4 v4, 0x0

    .line 54
    new-instance v1, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const/4 v5, 0x4

    const-string v6, "T"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v5, Ljava/lang/Object;

    if-nez v5, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {v1, v5}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    aput-object v1, v3, v4

    .line 52
    invoke-direct {v2, v0, v3}, Lcom/github/salomonbrys/kodein/CompositeTypeToken;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;[Lcom/github/salomonbrys/kodein/TypeToken;)V

    .line 41
    return-object v2
.end method
