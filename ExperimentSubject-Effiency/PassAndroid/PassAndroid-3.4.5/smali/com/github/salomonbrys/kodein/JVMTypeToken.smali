.class public abstract Lcom/github/salomonbrys/kodein/JVMTypeToken;
.super Ljava/lang/Object;
.source "types.kt"

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
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H&\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/JVMTypeToken;",
        "T",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "()V",
        "checkIsReified",
        "",
        "disp",
        "",
        "equals",
        "",
        "other",
        "fullDispString",
        "",
        "hashCode",
        "",
        "simpleDispString",
        "type",
        "Ljava/lang/reflect/Type;",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIsReified(Ljava/lang/Object;)V
    .locals 1
    .param p1, "disp"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "disp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;->type()Ljava/lang/reflect/Type;

    move-result-object v0

    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    invoke-static {p1, v0}, Lcom/github/salomonbrys/kodein/TypesKt;->access$_checkIsReified(Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    move-object v0, p0

    check-cast v0, Lcom/github/salomonbrys/kodein/JVMTypeToken;

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 76
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .line 72
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lcom/github/salomonbrys/kodein/JVMTypeToken;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;->type()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast p1, Lcom/github/salomonbrys/kodein/JVMTypeToken;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/github/salomonbrys/kodein/JVMTypeToken;->type()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0
.end method

.method public fullDispString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;->type()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypeDispKt;->fullDispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;->type()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public simpleDispString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;->type()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypeDispKt;->simpleDispString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract type()Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
