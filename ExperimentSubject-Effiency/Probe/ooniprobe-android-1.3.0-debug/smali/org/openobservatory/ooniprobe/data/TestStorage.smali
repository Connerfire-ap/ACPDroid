.class public Lorg/openobservatory/ooniprobe/data/TestStorage;
.super Ljava/lang/Object;
.source "TestStorage.java"


# static fields
.field public static final NEW_TESTS:Ljava/lang/String; = "new_tests"

.field public static final PREFS_NAME:Ljava/lang/String; = "OONIPROBE_APP"

.field public static final TESTS:Ljava/lang/String; = "Test"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "test"
        }
    .end annotation

    .line 173
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 174
    .local v0, "tests":Ljava/util/List;
    if-nez v0, :cond_0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 176
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 178
    return-void
.end method

.method public static loadTests(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 85
    const-string v0, "OONIPROBE_APP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 86
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "Test"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 89
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "jsonTests":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 91
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v3, [Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 92
    .local v3, "favoriteItems":[Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 93
    .local v4, "tests":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method

.method public static loadTestsReverse(Lorg/openobservatory/ooniprobe/activity/MainActivity;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "activity"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v0, "tests":Ljava/util/ArrayList;
    const-string v1, "OONIPROBE_APP"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "Test"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 65
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "jsonTests":Ljava/lang/String;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v4, [Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 68
    .local v4, "favoriteItems":[Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 69
    aget-object v6, v4, v5

    .line 70
    .local v6, "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-boolean v7, v6, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    if-nez v7, :cond_1

    .line 71
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_1
    invoke-static {p0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v7

    iget-object v8, v6, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/openobservatory/ooniprobe/data/TestData;->getTestWithName(Ljava/lang/String;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    move-result-object v7

    if-nez v7, :cond_2

    .line 73
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :cond_2
    invoke-static {p0, p0}, Lorg/openobservatory/ooniprobe/data/TestData;->getInstance(Landroid/content/Context;Landroid/app/Activity;)Lorg/openobservatory/ooniprobe/data/TestData;

    move-result-object v7

    iget-object v8, v6, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->testName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/openobservatory/ooniprobe/data/TestData;->getTestWithName(Ljava/lang/String;)Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    move-result-object v7

    iget-wide v7, v7, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    iget-wide v9, v6, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    .line 75
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v6    # "current":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "i":I
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 78
    return-object v0
.end method

.method public static newTestDetected(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    const-string v0, "OONIPROBE_APP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 45
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "new_tests"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    return-void
.end method

.method public static newTests(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 200
    const-string v0, "OONIPROBE_APP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v2, "new_tests"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static removeAllTests(Lorg/openobservatory/ooniprobe/activity/MainActivity;Landroid/content/Context;)V
    .locals 9
    .param p0, "activity"    # Lorg/openobservatory/ooniprobe/activity/MainActivity;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "context"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTestsReverse(Lorg/openobservatory/ooniprobe/activity/MainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    .local v0, "toRemove":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, "test_ids":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 208
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 209
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 210
    .local v3, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v4, v3, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v3    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v2    # "i":I
    :cond_0
    invoke-static {p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 214
    .local v2, "tests":Ljava/util/List;
    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 215
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 216
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 217
    .local v4, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v5, v4, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 218
    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    iget-object v7, v4, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    .local v5, "jsonFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    iget-object v8, v4, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v6, "logFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 221
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 223
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 215
    .end local v4    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .end local v5    # "jsonFile":Ljava/io/File;
    .end local v6    # "logFile":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 226
    .end local v3    # "i":I
    :cond_2
    invoke-static {p1, v2}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 227
    invoke-static {p1}, Lorg/openobservatory/ooniprobe/data/TestStorage;->resetNewTests(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p0}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->updateActionBar()V

    .line 230
    :cond_3
    return-void
.end method

.method public static removeTest(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "test"
        }
    .end annotation

    .line 181
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, "tests":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 185
    .local v2, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    iget-wide v5, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 186
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 187
    .local v3, "jsonFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .local v4, "logFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 189
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    goto :goto_1

    .line 183
    .end local v2    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .end local v3    # "jsonFile":Ljava/io/File;
    .end local v4    # "logFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 196
    :cond_2
    return-void
.end method

.method public static removeUnusedFiles(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 233
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    .local v0, "tests":Ljava/util/List;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 235
    .local v1, "usedFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    if-eqz v0, :cond_0

    .line 236
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 237
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 238
    .local v3, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, v3, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->json_file:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, v3, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->log_file:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v3    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 243
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v2, "allFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lorg/openobservatory/ooniprobe/data/TestStorage$1;

    invoke-direct {v4}, Lorg/openobservatory/ooniprobe/data/TestStorage$1;-><init>()V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 253
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 254
    .local v3, "iter":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 256
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 257
    .end local v4    # "file":Ljava/io/File;
    goto :goto_1

    .line 258
    :cond_1
    return-void
.end method

.method public static resetNewTests(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 52
    const-string v0, "OONIPROBE_APP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 54
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "new_tests"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public static setAllViewed(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "tests":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 163
    .local v2, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    if-nez v3, :cond_0

    .line 164
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    .end local v2    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 170
    :cond_2
    return-void
.end method

.method public static setAnomaly(Landroid/content/Context;JI)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "test_id"    # J
    .param p3, "anomaly"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "test_id",
            "anomaly"
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .local v0, "tests":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 133
    .local v2, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 134
    iput p3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->anomaly:I

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    goto :goto_1

    .line 131
    .end local v2    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 141
    :cond_2
    return-void
.end method

.method public static setCompleted(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "test"
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    .local v0, "tests":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 99
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 101
    .local v2, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    iget-wide v5, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 102
    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->running:Z

    .line 103
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->newTestDetected(Landroid/content/Context;)V

    .line 106
    goto :goto_1

    .line 99
    .end local v2    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 111
    :cond_2
    return-void
.end method

.method public static setEntry(Landroid/content/Context;Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "test"    # Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "test"
        }
    .end annotation

    .line 114
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 115
    .local v0, "tests":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 118
    .local v2, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    iget-wide v5, p1, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 119
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->entry:Z

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    goto :goto_1

    .line 116
    .end local v2    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 126
    :cond_2
    return-void
.end method

.method public static setViewed(Landroid/content/Context;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "test_id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "test_id"
        }
    .end annotation

    .line 144
    invoke-static {p0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->loadTests(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 145
    .local v0, "tests":Ljava/util/List;
    if-eqz v0, :cond_2

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;

    .line 148
    .local v2, "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    iget-wide v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->test_id:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    .line 149
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;->viewed:Z

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    goto :goto_1

    .line 146
    .end local v2    # "n":Lorg/openobservatory/ooniprobe/model/NetworkMeasurement;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lorg/openobservatory/ooniprobe/data/TestStorage;->storeTests(Landroid/content/Context;Ljava/util/List;)V

    .line 156
    :cond_2
    return-void
.end method

.method public static storeTests(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tests"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "tests"
        }
    .end annotation

    .line 32
    const-string v0, "OONIPROBE_APP"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 34
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "jsonTests":Ljava/lang/String;
    const-string v4, "Test"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
