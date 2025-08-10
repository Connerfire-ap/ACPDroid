.class public final Lcom/github/salomonbrys/kodein/TypeTypeToken;
.super Lcom/github/salomonbrys/kodein/ATypeTypeToken;
.source "types.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/github/salomonbrys/kodein/ATypeTypeToken",
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/github/salomonbrys/kodein/TypeTypeToken;",
        "T",
        "Lcom/github/salomonbrys/kodein/ATypeTypeToken;",
        "trueType",
        "Ljava/lang/reflect/Type;",
        "(Ljava/lang/reflect/Type;)V",
        "getTrueType",
        "()Ljava/lang/reflect/Type;",
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
.field private final trueType:Ljava/lang/reflect/Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "trueType"    # Ljava/lang/reflect/Type;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "trueType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/github/salomonbrys/kodein/ATypeTypeToken;-><init>()V

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/TypeTypeToken;->trueType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public getTrueType()Ljava/lang/reflect/Type;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/TypeTypeToken;->trueType:Ljava/lang/reflect/Type;

    return-object v0
.end method
