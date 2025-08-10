.class public final Lcom/github/salomonbrys/kodein/TypeTokenKt;
.super Ljava/lang/Object;
.source "typeToken.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "UnitToken",
        "Lcom/github/salomonbrys/kodein/TypeToken;",
        "",
        "getUnitToken",
        "()Lcom/github/salomonbrys/kodein/TypeToken;",
        "kodein-core_main"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# static fields
.field private static final UnitToken:Lcom/github/salomonbrys/kodein/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    nop

    .line 118
    new-instance v0, Lcom/github/salomonbrys/kodein/ClassTypeToken;

    const-class v1, Lkotlin/Unit;

    if-nez v1, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {v0, v1}, Lcom/github/salomonbrys/kodein/ClassTypeToken;-><init>(Ljava/lang/Class;)V

    check-cast v0, Lcom/github/salomonbrys/kodein/TypeToken;

    sput-object v0, Lcom/github/salomonbrys/kodein/TypeTokenKt;->UnitToken:Lcom/github/salomonbrys/kodein/TypeToken;

    return-void
.end method

.method public static final getUnitToken()Lcom/github/salomonbrys/kodein/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/salomonbrys/kodein/TypeToken",
            "<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/github/salomonbrys/kodein/TypeTokenKt;->UnitToken:Lcom/github/salomonbrys/kodein/TypeToken;

    return-object v0
.end method
