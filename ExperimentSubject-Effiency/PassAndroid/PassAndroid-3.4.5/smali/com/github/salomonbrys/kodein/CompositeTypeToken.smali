.class public final Lcom/github/salomonbrys/kodein/CompositeTypeToken;
.super Ljava/lang/Object;
.source "typeToken.kt"

# interfaces
.implements Lcom/github/salomonbrys/kodein/TypeToken;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/salomonbrys/kodein/TypeToken",
        "<TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B/\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u001a\u0010\u0004\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005\"\u0006\u0012\u0002\u0008\u00030\u0002\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002H\u0016J\u0012\u0010\u0016\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\u0002H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0016R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001f\u0010\u0004\u001a\u000e\u0012\n\u0008\u0001\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/CompositeTypeToken;",
        "T",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "main",
        "params",
        "",
        "(Lcom/github/salomonbrys/kodein/TypeToken;[Lcom/github/salomonbrys/kodein/TypeToken;)V",
        "getMain",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "getParams",
        "()[Lcom/github/salomonbrys/kodein/TypeToken;",
        "[Lcom/github/salomonbrys/kodein/TypeToken;",
        "checkIsReified",
        "",
        "disp",
        "",
        "equals",
        "",
        "other",
        "fullDispString",
        "",
        "getRaw",
        "getSuper",
        "hashCode",
        "",
        "isGeneric",
        "isWildcard",
        "simpleDispString",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field private final main:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final params:[Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/github/salomonbrys/kodein/TypeToken;[Lcom/github/salomonbrys/kodein/TypeToken;)V
    .locals 2
    .param p1, "main"    # Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "params"    # [Lcom/github/salomonbrys/kodein/TypeToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;[",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "main"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    .line 82
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CompositeTypeToken must be given at least one type parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method


# virtual methods
.method public checkIsReified(Ljava/lang/Object;)V
    .locals 5
    .param p1, "disp"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v3, "disp"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-interface {v3, p1}, Lcom/github/salomonbrys/kodein/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v0, [Ljava/lang/Object;

    .line 118
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .local v1, "element$iv":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 92
    .local v2, "it":Lcom/github/salomonbrys/kodein/TypeToken;
    invoke-interface {v2, p1}, Lcom/github/salomonbrys/kodein/TypeToken;->checkIsReified(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "element$iv":Ljava/lang/Object;
    .end local v2    # "it":Lcom/github/salomonbrys/kodein/TypeToken;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    move-object v0, p0

    check-cast v0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    if-ne v0, p1, :cond_0

    .line 109
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v2

    .line 107
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    if-nez v0, :cond_1

    move v2, v3

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    move-object v0, p1

    check-cast v0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    iget-object v0, v0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v0, [Ljava/lang/Object;

    check-cast p1, Lcom/github/salomonbrys/kodein/CompositeTypeToken;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public fullDispString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->fullDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v0, [Ljava/lang/Object;

    const-string v1, ", "

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/16 v7, 0x3e

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMain()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public final getParams()[Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method

.method public getRaw()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/TypeToken;->getRaw()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public getSuper()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-interface {v0}, Lcom/github/salomonbrys/kodein/TypeToken;->getSuper()Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public simpleDispString()Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->main:Lcom/github/salomonbrys/kodein/TypeToken;

    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/TypeToken;->simpleDispString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, p0, Lcom/github/salomonbrys/kodein/CompositeTypeToken;->params:[Lcom/github/salomonbrys/kodein/TypeToken;

    check-cast v0, [Ljava/lang/Object;

    const-string v1, ", "

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/16 v7, 0x3e

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-static/range {v0 .. v8}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
