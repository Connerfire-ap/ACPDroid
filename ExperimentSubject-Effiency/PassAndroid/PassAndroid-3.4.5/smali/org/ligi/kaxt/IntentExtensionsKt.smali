.class public final Lorg/ligi/kaxt/IntentExtensionsKt;
.super Ljava/lang/Object;
.source "IntentExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u001a\u001c\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u001a\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "isIntentAvailable",
        "",
        "Landroid/content/Intent;",
        "pm",
        "Landroid/content/pm/PackageManager;",
        "flags",
        "",
        "isServiceAvailable",
        "makeExplicit",
        "context",
        "Landroid/content/Context;",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x7
    }
.end annotation


# direct methods
.method public static final isIntentAvailable(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Z
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bridge synthetic isIntentAvailable$default(Landroid/content/Intent;Landroid/content/pm/PackageManager;IILjava/lang/Object;)Z
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 19
    const/high16 p2, 0x10000

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ligi/kaxt/IntentExtensionsKt;->isIntentAvailable(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Z

    move-result v0

    return v0
.end method

.method public static final isServiceAvailable(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Z
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bridge synthetic isServiceAvailable$default(Landroid/content/Intent;Landroid/content/pm/PackageManager;IILjava/lang/Object;)Z
    .locals 1

    .prologue
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    .line 32
    const/high16 p2, 0x10000

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/ligi/kaxt/IntentExtensionsKt;->isServiceAvailable(Landroid/content/Intent;Landroid/content/pm/PackageManager;I)Z

    move-result v0

    return v0
.end method

.method public static final makeExplicit(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .param p0, "$receiver"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const-string v7, "$receiver"

    invoke-static {p0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "context"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 37
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p0, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    .local v4, "resolveInfo":Ljava/util/List;
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 40
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 41
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 42
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 45
    .local v5, "result":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 46
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "resolveInfo":Ljava/util/List;
    .end local v5    # "result":Landroid/content/Intent;
    .end local v6    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v5

    .line 37
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
