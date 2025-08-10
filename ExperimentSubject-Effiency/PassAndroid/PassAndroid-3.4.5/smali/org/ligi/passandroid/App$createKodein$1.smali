.class final Lorg/ligi/passandroid/App$createKodein$1;
.super Lkotlin/jvm/internal/Lambda;
.source "App.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/App;->createKodein()Lcom/github/salomonbrys/kodein/Kodein$Module;
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
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
        "Lkotlin/Unit;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/github/salomonbrys/kodein/Kodein$Builder;",
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
.field final synthetic this$0:Lorg/ligi/passandroid/App;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/App;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/App$createKodein$1;->this$0:Lorg/ligi/passandroid/App;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/github/salomonbrys/kodein/Kodein$Builder;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/App$createKodein$1;->invoke(Lcom/github/salomonbrys/kodein/Kodein$Builder;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/github/salomonbrys/kodein/Kodein$Builder;)V
    .locals 9
    .param p1, "$receiver"    # Lcom/github/salomonbrys/kodein/Kodein$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const-string v5, "$receiver"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v5, Lcom/squareup/moshi/Moshi$Builder;

    invoke-direct {v5}, Lcom/squareup/moshi/Moshi$Builder;-><init>()V

    .line 40
    new-instance v6, Lorg/ligi/passandroid/json_adapter/ZonedTimeAdapter;

    invoke-direct {v6}, Lorg/ligi/passandroid/json_adapter/ZonedTimeAdapter;-><init>()V

    invoke-virtual {v5, v6}, Lcom/squareup/moshi/Moshi$Builder;->add(Ljava/lang/Object;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v5

    .line 41
    new-instance v6, Lorg/ligi/passandroid/json_adapter/ColorAdapter;

    invoke-direct {v6}, Lorg/ligi/passandroid/json_adapter/ColorAdapter;-><init>()V

    invoke-virtual {v5, v6}, Lcom/squareup/moshi/Moshi$Builder;->add(Ljava/lang/Object;)Lcom/squareup/moshi/Moshi$Builder;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lcom/squareup/moshi/Moshi$Builder;->build()Lcom/squareup/moshi/Moshi;

    move-result-object v1

    .line 45
    .local v1, "build":Lcom/squareup/moshi/Moshi;
    move-object v0, p1

    .line 67
    .local v0, "$receiver$iv":Lcom/github/salomonbrys/kodein/Kodein$Builder;
    const/4 v3, 0x0

    .local v3, "tag$iv":Ljava/lang/Object;
    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    .line 69
    .local v2, "overrides$iv":Ljava/lang/Boolean;
    new-instance v5, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$bind$1;

    invoke-direct {v5}, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$bind$1;-><init>()V

    check-cast v5, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 68
    invoke-virtual {v0, v5, v3, v2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v8

    .line 45
    new-instance v5, Lorg/ligi/passandroid/App$createKodein$1$1;

    invoke-direct {v5, p0, v1}, Lorg/ligi/passandroid/App$createKodein$1$1;-><init>(Lorg/ligi/passandroid/App$createKodein$1;Lcom/squareup/moshi/Moshi;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 70
    new-instance v7, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;

    .line 71
    new-instance v6, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$singleton$1;

    invoke-direct {v6}, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$singleton$1;-><init>()V

    check-cast v6, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 70
    invoke-direct {v7, v6, v5}, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v7

    check-cast v5, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .line 45
    invoke-virtual {v8, v5}, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    .line 46
    move-object v0, p1

    .line 72
    const/4 v3, 0x0

    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    .line 74
    new-instance v5, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$bind$2;

    invoke-direct {v5}, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$bind$2;-><init>()V

    check-cast v5, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 73
    invoke-virtual {v0, v5, v3, v2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v8

    .line 46
    new-instance v5, Lorg/ligi/passandroid/App$createKodein$1$2;

    invoke-direct {v5, p0}, Lorg/ligi/passandroid/App$createKodein$1$2;-><init>(Lorg/ligi/passandroid/App$createKodein$1;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 75
    new-instance v7, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;

    .line 76
    new-instance v6, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$singleton$2;

    invoke-direct {v6}, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$singleton$2;-><init>()V

    check-cast v6, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 75
    invoke-direct {v7, v6, v5}, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V

    move-object v5, v7

    check-cast v5, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .line 46
    invoke-virtual {v8, v5}, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    .line 47
    move-object v0, p1

    .line 77
    const/4 v3, 0x0

    move-object v2, v4

    check-cast v2, Ljava/lang/Boolean;

    .line 79
    new-instance v4, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$bind$3;

    invoke-direct {v4}, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$bind$3;-><init>()V

    check-cast v4, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 78
    invoke-virtual {v0, v4, v3, v2}, Lcom/github/salomonbrys/kodein/Kodein$Builder;->Bind(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;Ljava/lang/Boolean;)Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;

    move-result-object v7

    .line 47
    sget-object v4, Lorg/ligi/passandroid/App$createKodein$1$3;->INSTANCE:Lorg/ligi/passandroid/App$createKodein$1$3;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 80
    new-instance v6, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;

    .line 81
    new-instance v5, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$singleton$3;

    invoke-direct {v5}, Lorg/ligi/passandroid/App$createKodein$1$$special$$inlined$singleton$3;-><init>()V

    check-cast v5, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 80
    invoke-direct {v6, v5, v4}, Lcom/github/salomonbrys/kodein/bindings/SingletonBinding;-><init>(Lcom/github/salomonbrys/kodein/TypeToken;Lkotlin/jvm/functions/Function1;)V

    move-object v4, v6

    check-cast v4, Lcom/github/salomonbrys/kodein/bindings/Binding;

    .line 47
    invoke-virtual {v7, v4}, Lcom/github/salomonbrys/kodein/Kodein$Builder$TypeBinder;->with(Lcom/github/salomonbrys/kodein/bindings/Binding;)V

    .line 48
    return-void
.end method
