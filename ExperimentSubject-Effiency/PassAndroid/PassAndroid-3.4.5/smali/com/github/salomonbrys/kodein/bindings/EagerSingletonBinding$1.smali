.class final Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;
.super Lkotlin/jvm/internal/Lambda;
.source "bindings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;-><init>(Lcom/github/salomonbrys/kodein/Kodein$Builder;Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
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
.field final synthetic $key:Lcom/github/salomonbrys/kodein/Kodein$Key;

.field final synthetic this$0:Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;


# direct methods
.method constructor <init>(Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;Lcom/github/salomonbrys/kodein/Kodein$Key;)V
    .locals 1

    iput-object p1, p0, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;->this$0:Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;

    iput-object p2, p0, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;->$key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    check-cast p1, Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    invoke-virtual {p0, p1}, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;->invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)V
    .locals 2
    .param p1, "$receiver"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;->this$0:Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;

    iget-object v1, p0, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding$1;->$key:Lcom/github/salomonbrys/kodein/Kodein$Key;

    invoke-virtual {v0, p1, v1}, Lcom/github/salomonbrys/kodein/bindings/EagerSingletonBinding;->getInstance(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;Lcom/github/salomonbrys/kodein/Kodein$Key;)Ljava/lang/Object;

    return-void
.end method
