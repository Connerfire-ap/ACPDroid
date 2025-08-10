.class final Lorg/ligi/passandroid/App$createKodein$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "App.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/App$createKodein$1;->invoke(Lcom/github/salomonbrys/kodein/Kodein$Builder;)V
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
        "Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;",
        "Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $build:Lcom/squareup/moshi/Moshi;

.field final synthetic this$0:Lorg/ligi/passandroid/App$createKodein$1;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/App$createKodein$1;Lcom/squareup/moshi/Moshi;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/App$createKodein$1$1;->this$0:Lorg/ligi/passandroid/App$createKodein$1;

    iput-object p2, p0, Lorg/ligi/passandroid/App$createKodein$1$1;->$build:Lcom/squareup/moshi/Moshi;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/App$createKodein$1$1;->invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;)Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;
    .locals 7
    .param p1, "$receiver"    # Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "$receiver"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v4, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;

    iget-object v1, p0, Lorg/ligi/passandroid/App$createKodein$1$1;->this$0:Lorg/ligi/passandroid/App$createKodein$1;

    iget-object v1, v1, Lorg/ligi/passandroid/App$createKodein$1;->this$0:Lorg/ligi/passandroid/App;

    check-cast v1, Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v2}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v3

    .line 69
    new-instance v2, Lorg/ligi/passandroid/App$createKodein$1$1$$special$$inlined$instance$1;

    invoke-direct {v2}, Lorg/ligi/passandroid/App$createKodein$1$1$$special$$inlined$instance$1;-><init>()V

    check-cast v2, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 68
    invoke-interface {v3, v2, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ligi/passandroid/model/Settings;

    .line 45
    iget-object v5, p0, Lorg/ligi/passandroid/App$createKodein$1$1;->$build:Lcom/squareup/moshi/Moshi;

    const-string v3, "build"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 70
    .end local p1    # "$receiver":Lcom/github/salomonbrys/kodein/bindings/NoArgBindingKodein;
    const/4 v0, 0x0

    .line 71
    invoke-interface {p1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v6

    .line 72
    new-instance v3, Lorg/ligi/passandroid/App$createKodein$1$1$$special$$inlined$instance$2;

    invoke-direct {v3}, Lorg/ligi/passandroid/App$createKodein$1$1$$special$$inlined$instance$2;-><init>()V

    check-cast v3, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 71
    invoke-interface {v6, v3, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/greenrobot/eventbus/EventBus;

    .line 45
    invoke-direct {v4, v1, v2, v5, v3}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;-><init>(Landroid/content/Context;Lorg/ligi/passandroid/model/Settings;Lcom/squareup/moshi/Moshi;Lorg/greenrobot/eventbus/EventBus;)V

    return-object v4
.end method
