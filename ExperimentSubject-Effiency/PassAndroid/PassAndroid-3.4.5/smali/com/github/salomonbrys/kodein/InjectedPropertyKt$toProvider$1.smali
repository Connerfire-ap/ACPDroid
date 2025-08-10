.class public final Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InjectedProperty.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/InjectedPropertyKt;->toProvider(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0",
        "<",
        "Lkotlin/jvm/functions/Function0",
        "<+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Function0;",
        "T",
        "A",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x6
    }
.end annotation


# instance fields
.field final synthetic $arg:Lkotlin/jvm/functions/Function0;

.field final synthetic receiver$0:Lcom/github/salomonbrys/kodein/InjectedProperty;


# direct methods
.method public constructor <init>(Lcom/github/salomonbrys/kodein/InjectedProperty;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;->receiver$0:Lcom/github/salomonbrys/kodein/InjectedProperty;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;->$arg:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;->invoke()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1$1;

    invoke-direct {v0, p0}, Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1$1;-><init>(Lcom/github/salomonbrys/kodein/InjectedPropertyKt$toProvider$1;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
