.class public final Ldagger/android/AndroidInjection;
.super Ljava/lang/Object;
.source "AndroidInjection.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dagger.android"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findHasFragmentInjector(Landroid/app/Fragment;)Ldagger/android/HasFragmentInjector;
    .locals 6
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 103
    move-object v0, p0

    .line 104
    .local v0, "parentFragment":Landroid/app/Fragment;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 105
    instance-of v1, v0, Ldagger/android/HasFragmentInjector;

    if-eqz v1, :cond_0

    .line 106
    move-object v1, v0

    check-cast v1, Ldagger/android/HasFragmentInjector;

    return-object v1

    .line 109
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 110
    .local v1, "activity":Landroid/app/Activity;
    instance-of v2, v1, Ldagger/android/HasFragmentInjector;

    if-eqz v2, :cond_2

    .line 111
    move-object v2, v1

    check-cast v2, Ldagger/android/HasFragmentInjector;

    return-object v2

    .line 113
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    instance-of v2, v2, Ldagger/android/HasFragmentInjector;

    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Ldagger/android/HasFragmentInjector;

    return-object v2

    .line 116
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "No injector was found for %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inject(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 45
    const-string v0, "activity"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 47
    .local v0, "application":Landroid/app/Application;
    instance-of v1, v0, Ldagger/android/HasActivityInjector;

    if-eqz v1, :cond_0

    .line 55
    move-object v1, v0

    check-cast v1, Ldagger/android/HasActivityInjector;

    .line 56
    invoke-interface {v1}, Ldagger/android/HasActivityInjector;->activityInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    .line 57
    .local v1, "activityInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/app/Activity;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "%s.activityInjector() returned null"

    invoke-static {v1, v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 60
    return-void

    .line 48
    .end local v1    # "activityInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/app/Activity;>;"
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ldagger/android/HasActivityInjector;

    .line 52
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 49
    const-string v3, "%s does not implement %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inject(Landroid/app/Fragment;)V
    .locals 5
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragment"
        }
    .end annotation

    .line 84
    const-string v0, "fragment"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    invoke-static {p0}, Ldagger/android/AndroidInjection;->findHasFragmentInjector(Landroid/app/Fragment;)Ldagger/android/HasFragmentInjector;

    move-result-object v0

    .line 86
    .local v0, "hasFragmentInjector":Ldagger/android/HasFragmentInjector;
    const-string v1, "dagger.android"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 89
    const-string v3, "An injector for %s was found in %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    invoke-interface {v0}, Ldagger/android/HasFragmentInjector;->fragmentInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    .line 96
    .local v1, "fragmentInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/app/Fragment;>;"
    nop

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 96
    const-string v3, "%s.fragmentInjector() returned null"

    invoke-static {v1, v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static inject(Landroid/app/Service;)V
    .locals 5
    .param p0, "service"    # Landroid/app/Service;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 128
    const-string v0, "service"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 130
    .local v0, "application":Landroid/app/Application;
    instance-of v1, v0, Ldagger/android/HasServiceInjector;

    if-eqz v1, :cond_0

    .line 138
    move-object v1, v0

    check-cast v1, Ldagger/android/HasServiceInjector;

    invoke-interface {v1}, Ldagger/android/HasServiceInjector;->serviceInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    .line 139
    .local v1, "serviceInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/app/Service;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "%s.serviceInjector() returned null"

    invoke-static {v1, v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 142
    return-void

    .line 131
    .end local v1    # "serviceInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/app/Service;>;"
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ldagger/android/HasServiceInjector;

    .line 135
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 132
    const-string v3, "%s does not implement %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inject(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 5
    .param p0, "broadcastReceiver"    # Landroid/content/BroadcastReceiver;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "broadcastReceiver",
            "context"
        }
    .end annotation

    .line 152
    const-string v0, "broadcastReceiver"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 153
    const-string v0, "context"

    invoke-static {p1, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 155
    .local v0, "application":Landroid/app/Application;
    instance-of v1, v0, Ldagger/android/HasBroadcastReceiverInjector;

    if-eqz v1, :cond_0

    .line 163
    move-object v1, v0

    check-cast v1, Ldagger/android/HasBroadcastReceiverInjector;

    .line 164
    invoke-interface {v1}, Ldagger/android/HasBroadcastReceiverInjector;->broadcastReceiverInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    .line 165
    .local v1, "broadcastReceiverInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/content/BroadcastReceiver;>;"
    nop

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 165
    const-string v3, "%s.broadcastReceiverInjector() returned null"

    invoke-static {v1, v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 171
    return-void

    .line 156
    .end local v1    # "broadcastReceiverInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/content/BroadcastReceiver;>;"
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ldagger/android/HasBroadcastReceiverInjector;

    .line 160
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 157
    const-string v3, "%s does not implement %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inject(Landroid/content/ContentProvider;)V
    .locals 5
    .param p0, "contentProvider"    # Landroid/content/ContentProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentProvider"
        }
    .end annotation

    .line 181
    const-string v0, "contentProvider"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 183
    .local v0, "application":Landroid/app/Application;
    instance-of v1, v0, Ldagger/android/HasContentProviderInjector;

    if-eqz v1, :cond_0

    .line 191
    move-object v1, v0

    check-cast v1, Ldagger/android/HasContentProviderInjector;

    .line 192
    invoke-interface {v1}, Ldagger/android/HasContentProviderInjector;->contentProviderInjector()Ldagger/android/AndroidInjector;

    move-result-object v1

    .line 193
    .local v1, "contentProviderInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/content/ContentProvider;>;"
    nop

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 193
    const-string v3, "%s.contentProviderInjector() returned null"

    invoke-static {v1, v3, v2}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface {v1, p0}, Ldagger/android/AndroidInjector;->inject(Ljava/lang/Object;)V

    .line 199
    return-void

    .line 184
    .end local v1    # "contentProviderInjector":Ldagger/android/AndroidInjector;, "Ldagger/android/AndroidInjector<Landroid/content/ContentProvider;>;"
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ldagger/android/HasContentProviderInjector;

    .line 188
    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 185
    const-string v3, "%s does not implement %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
