export default function monitorSagas(store) {
  const allTasks = []
  const saveRunSaga = store.runSaga

  // eslint-disable-next-line no-param-reassign
  store.runSaga = function interceptRunSaga(saga) {
    const task = saveRunSaga.call(store, saga)
    allTasks.push(task)
    return task
  }

  return function done() {
    return Promise.all(allTasks.map(t => t.done))
  }
}
