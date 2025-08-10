.class public final Lcom/github/salomonbrys/kodein/ClassTypeToken;
.super Lcom/github/salomonbrys/kodein/JVMTypeToken;
.source "types.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/JVMTypeToken",
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
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000H\u0016J\u0012\u0010\u000b\u001a\u000c\u0012\u0006\u0008\u0000\u0012\u00028\u0000\u0018\u00010\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/ClassTypeToken;",
        "T",
        "Lcom/github/salomonbrys/kodein/JVMTypeToken;",
        "_type",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)V",
        "checkIsReified",
        "",
        "disp",
        "",
        "getRaw",
        "getSuper",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "isGeneric",
        "",
        "isWildcard",
        "type",
        "kodein-core_main"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field private final _type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "_type"    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const-string v0, "_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/JVMTypeToken;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/ClassTypeToken;->_type:Ljava/lang/Class;

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

    .line 310
    return-void
.end method

.method public getRaw()Lcom/github/salomonbrys/kodein/ClassTypeToken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/ClassTypeToken",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 305
    return-object p0
.end method

.method public bridge synthetic getRaw()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ClassTypeToken;->getRaw()Lcom/github/salomonbrys/kodein/ClassTypeToken;

    move-result-object v0

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

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
    .line 312
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/ClassTypeToken;->_type:Ljava/lang/Class;

    # invokes: Lcom/github/salomonbrys/kodein/TypesKt;->_getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;
    invoke-static {v0}, Lcom/github/salomonbrys/kodein/TypesKt;->access$_getClassSuperTT(Ljava/lang/Class;)Lcom/github/salomonbrys/kodein/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public isGeneric()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public isWildcard()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/ClassTypeToken;->_type:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic type()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/ClassTypeToken;->type()Ljava/lang/Class;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method
